#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import random
import re
from collections import Counter, defaultdict
from copy import deepcopy
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

from utils.prov_utils import iter_ok_queries  # requires PYTHONPATH=src


INSTRUCTION = (
    "Return ONLY valid JSON (no extra text).Output MUST be a JSON array.\n"
    "Each array element MUST be an object with EXACTLY these keys:\n"
    "- result: an object representing one output tuple\n"
    "- provenance: a Why[X] provenance expression for that tuple, where each provenance identifier\n"
    "  is a string formatted as ''<table_name>_<row_number>'' (e.g., ''standings_35'').\n"
    "  The provenance field MUST be a list of lists of provenance identifiers.\n"
    "  Each inner list contains the provenance identifiers that together produce the result tuple."
    "JSON schema:\n"
    "[{''result'': {...}, ''provenance'': [[''t1'',''t2''], [''t3''], ...]}, ...]\n"
    "Do NOT output SQL, explanations, markdown, or additional keys."
    "If there are no results, return []."
)

META_RE = re.compile(r"--\s*meta\s*(\{.*?\})", re.IGNORECASE | re.DOTALL)


# -----------------------
# Meta / type utilities
# -----------------------
def meta_from_sql_query_prov(sql_query_prov: str) -> Optional[Dict[str, Any]]:
    if not sql_query_prov:
        return None
    m = META_RE.search(sql_query_prov)
    if not m:
        return None
    try:
        return json.loads(m.group(1))
    except Exception:
        return None


def normalize_meta(meta: Dict[str, Any]) -> Dict[str, Any]:
    def b(x) -> bool:
        return bool(x)

    def i(x) -> int:
        try:
            return int(x)
        except Exception:
            return 0

    return {
        "num_joins": i(meta.get("num_joins", 0)),
        "num_aggregates": i(meta.get("num_aggregates", 0)),
        "has_union": b(meta.get("has_union", False)),
        "has_intersect": b(meta.get("has_intersect", False)),
        "has_negation": b(meta.get("has_negation", False)),
    }


def type_key(meta: Dict[str, Any]) -> str:
    m = normalize_meta(meta)
    return (
        f"joins={m['num_joins']};aggs={m['num_aggregates']};"
        f"union={int(m['has_union'])};intersect={int(m['has_intersect'])};neg={int(m['has_negation'])}"
    )


def update_type_counters(counters: Dict[str, Counter], phase: str, meta: Optional[Dict[str, Any]]) -> None:
    if meta is None:
        counters[f"{phase}_missing_meta"]["missing_meta"] += 1
        return

    m = normalize_meta(meta)
    counters[f"{phase}_by_type"][type_key(m)] += 1
    counters[f"{phase}_num_joins"][str(m["num_joins"])] += 1
    counters[f"{phase}_num_aggregates"][str(m["num_aggregates"])] += 1
    counters[f"{phase}_has_union"][str(m["has_union"])] += 1
    counters[f"{phase}_has_intersect"][str(m["has_intersect"])] += 1
    counters[f"{phase}_has_negation"][str(m["has_negation"])] += 1


# -----------------------
# IO utilities
# -----------------------
def load_json_or_jsonl(path: Path) -> List[Dict[str, Any]]:
    text = path.read_text(encoding="utf-8").strip()
    if not text:
        return []
    if text[0] == "[":
        return json.loads(text)
    out = []
    for line in text.splitlines():
        line = line.strip()
        if not line:
            continue
        out.append(json.loads(line))
    return out


def index_by_id(objs: List[Dict[str, Any]]) -> Dict[int, Dict[str, Any]]:
    out: Dict[int, Dict[str, Any]] = {}
    for o in objs:
        if "id" not in o:
            continue
        try:
            i = int(o["id"])
        except Exception:
            continue
        out[i] = o
    return out


def strip_result_fields(result_obj: Dict[str, Any], drop_keys: List[str]) -> Dict[str, Any]:
    if not drop_keys:
        return result_obj
    return {k: v for k, v in result_obj.items() if k not in drop_keys}


# -----------------------
# DPO prompt + negatives
# -----------------------
def build_prompt(question: str, context_data: Dict[str, Any]) -> str:
    return (
        f"{INSTRUCTION}\n\n"
        f"QUESTION:\n{question}\n\n"
        f"CONTEXT_DATA (rows):\n{json.dumps(context_data, ensure_ascii=False)}\n"
    )


def make_negative_output(
    chosen_output: List[Dict[str, Any]],
    context_data: Dict[str, Any],
    rng: random.Random,
    mode_weights: Optional[Dict[str, float]] = None,
) -> tuple[List[Dict[str, Any]], str]:
    """
    Produce ONE single edit to create a rejected output (provenance-only).
    Returns (rejected_output, mode_used).
    mode_used can be 'fallback_noedit' if no edit was applicable.

    Modes:
      - add_token_ws: add 1 token inside an existing witness set
      - remove_token_ws: reduce an existing witness set to 1 token
      - add_set: add a new singleton witness set
      - remove_set: remove one witness set if provenance has >= 2 sets
      - replace_token_ws: replace one token in a witness set with another token from the SAME table
    """
    if not chosen_output:
        return chosen_output, "fallback_empty"

    if mode_weights is None:
        mode_weights = {
            "add_token_ws": 0.20,
            "remove_token_ws": 0.20,
            "add_set": 0.20,
            "remove_set": 0.20,
            "replace_token_ws": 0.20,
        }

    rejected = deepcopy(chosen_output)

    # context tokens: table -> [token...], e.g., "standings" -> ["standings_1", "standings_2", ...]
    ctx_tokens: Dict[str, List[str]] = {}
    for table, by_tok in (context_data or {}).items():
        if isinstance(by_tok, dict):
            toks = [k for k in by_tok.keys() if isinstance(k, str)]
            if toks:
                ctx_tokens[table] = toks

    def all_ctx_tokens() -> List[str]:
        return [tok for toks in ctx_tokens.values() for tok in toks]

    modes = list(mode_weights.keys())
    weights = [mode_weights[m] for m in modes]

    def pick_mode() -> str:
        return rng.choices(modes, weights=weights, k=1)[0]

    def pick_tuple_with_prov(min_sets: int = 1) -> Optional[int]:
        """
        Pick an index of a tuple whose 'provenance' is a list with length >= min_sets.
        """
        candidates = []
        for i, ex in enumerate(rejected):
            prov = ex.get("provenance")
            if isinstance(prov, list) and len(prov) >= min_sets:
                candidates.append(i)
        return rng.choice(candidates) if candidates else None

    # ----------------
    # provenance edits
    # ----------------

    def do_add_token_ws() -> bool:
        """
        Add 1 token inside an existing witness set.
        Example: [["circuits_2","races_19"]] -> [["circuits_2","races_19","drivers_11"]]
        """
        ti = pick_tuple_with_prov(min_sets=1)
        if ti is None:
            return False

        prov = rejected[ti]["provenance"]
        wi = rng.randrange(len(prov))
        ws = prov[wi]
        if not (isinstance(ws, list) and len(ws) >= 1):
            return False

        pool = [tok for tok in all_ctx_tokens() if tok not in ws]
        if not pool:
            return False

        new_ws = list(ws)
        new_ws.append(rng.choice(pool))
        prov = list(prov)
        prov[wi] = new_ws
        rejected[ti]["provenance"] = prov
        return True

    def do_remove_token_ws() -> bool:
        """
        Reduce a witness set to exactly 1 token.
        Example: [["circuits_2","races_19"]] -> [["circuits_2"]]
        """
        # need a tuple where at least one ws has >=2 tokens
        candidates = []
        for i, ex in enumerate(rejected):
            prov = ex.get("provenance")
            if isinstance(prov, list) and any(isinstance(ws, list) and len(ws) >= 2 for ws in prov):
                candidates.append(i)
        if not candidates:
            return False

        ti = rng.choice(candidates)
        prov = rejected[ti]["provenance"]

        ws_idxs = [j for j, ws in enumerate(prov) if isinstance(ws, list) and len(ws) >= 2]
        wi = rng.choice(ws_idxs)
        ws = prov[wi]

        # keep the first token (deterministic style [["circuits_2"]])
        kept = ws[0]
        if not isinstance(kept, str):
            # fallback: choose any element
            kept = rng.choice(ws)

        prov = list(prov)
        prov[wi] = [kept]
        rejected[ti]["provenance"] = prov
        return True

    def do_add_set() -> bool:
        """
        Add a new witness set (singleton token) to provenance.
        Example: [["circuits_2","races_19"]] -> [["circuits_2","races_19"],["drivers_8"]]
        """
        ti = pick_tuple_with_prov(min_sets=1)
        if ti is None:
            return False

        token_pool = all_ctx_tokens()
        if not token_pool:
            return False

        prov = list(rejected[ti]["provenance"])
        prov.append([rng.choice(token_pool)])
        rejected[ti]["provenance"] = prov
        return True

    def do_remove_set() -> bool:
        """
        Remove ONE witness set from provenance, only if provenance has >=2 sets.
        Example: [["a","b"],["x"]] -> [["x"]] or [["a","b"]]
        If only 1 set exists, return False so another method can be chosen.
        """
        ti = pick_tuple_with_prov(min_sets=2)
        if ti is None:
            return False

        prov = list(rejected[ti]["provenance"])
        prov.pop(rng.randrange(len(prov)))
        rejected[ti]["provenance"] = prov
        return True

    def do_replace_token_ws() -> bool:
        """
        Replace one token inside one witness set with another token from the SAME table.
        Example: ["constructor_standings_33","races_21"] -> ["constructor_standings_34","races_21"]
        """
        ti = pick_tuple_with_prov(min_sets=1)
        if ti is None:
            return False

        prov = rejected[ti]["provenance"]
        wi = rng.randrange(len(prov))
        ws = prov[wi]
        if not (isinstance(ws, list) and len(ws) >= 1):
            return False

        pos = rng.randrange(len(ws))
        tok = ws[pos]
        if not (isinstance(tok, str) and "_" in tok):
            return False

        table = tok.rsplit("_", 1)[0]  # works with table names containing underscores
        pool = [t for t in ctx_tokens.get(table, []) if t not in ws]
        if not pool:
            return False

        new_ws = list(ws)
        new_ws[pos] = rng.choice(pool)
        prov = list(prov)
        prov[wi] = new_ws
        rejected[ti]["provenance"] = prov
        return True

    edit_fns = {
        "add_token_ws": do_add_token_ws,
        "remove_token_ws": do_remove_token_ws,
        "add_set": do_add_set,
        "remove_set": do_remove_set,
        "replace_token_ws": do_replace_token_ws,
    }

    for _ in range(20):
        mode = pick_mode()
        if edit_fns[mode]():
            return rejected, mode

    return rejected, "fallback_noedit"

# -----------------------
# Main
# -----------------------
def main() -> None:
    '''how to run: 
    python scripts/build_ft_dataset.py \
  --prov-jsonl queries_with_prov/tpch_limit_noerr_prov.jsonl \
  --nl-file nl_queries/sql_nl_tpch_curated_llamalatest.json \
  --context-jsonl artifacts/tpch_context_data.jsonl \
  --target-n 1500 \
  --max-tuples 10 \
  --seed 7'''
    ap = argparse.ArgumentParser()
    ap.add_argument("--prov-jsonl", type=Path, required=True)
    ap.add_argument("--nl-file", type=Path, required=True)
    ap.add_argument("--context-jsonl", type=Path, required=True)

    ap.add_argument("--out-sft", type=Path, default=Path("artifacts/tpch/sft_1500.jsonl"))
    ap.add_argument("--out-dpo", type=Path, default=Path("artifacts/tpch/dpo_1500.jsonl"))
    ap.add_argument("--out-ci", type=Path, default=Path("artifacts/tpch/ci_1500.jsonl"))
    ap.add_argument("--out-stats", type=Path, default=Path("artifacts/tpch/ft_1500_stats_by_type.json"))

    ap.add_argument("--target-n", type=int, default=1500)
    ap.add_argument("--seed", type=int, default=7)

    ap.add_argument("--max-tuples", type=int, default=10, help="Cap number of output tuples per query")
    ap.add_argument("--drop-result-keys", nargs="*", default=["provsql"], help="Drop keys from each result tuple")
    args = ap.parse_args()

    rng = random.Random(args.seed)

    # Load NL + context
    nl_by_id = index_by_id(load_json_or_jsonl(args.nl_file))
    ctx_by_id = index_by_id(load_json_or_jsonl(args.context_jsonl))

    type_counters: Dict[str, Counter] = defaultdict(Counter)
    neg_mode_counts = Counter()

    merged: List[Tuple[int, Dict[str, Any], str, Dict[str, Any], Optional[Dict[str, Any]]]] = []
    missing_nl = 0
    missing_ctx = 0

    all_ok = 0

    pass_nonempty_result = 0
    pass_has_nl = 0
    pass_has_context = 0

    drop_bad_id = 0
    drop_empty_result = 0
    drop_missing_nl = 0
    drop_missing_context = 0
    num_truncated_total = 0
    truncated_tuples_total = 0
    # Scan prov file
    for obj in iter_ok_queries(args.prov_jsonl):
        all_ok += 1
        meta = meta_from_sql_query_prov(obj.get("sql_query_prov", ""))

        qid = obj.get("id")
        try:
            qid = int(qid)
        except Exception:
            drop_bad_id += 1
            continue

        res = obj.get("result", []) or []
        if not res:
            drop_empty_result += 1
            continue
        pass_nonempty_result += 1

        nl_obj = nl_by_id.get(qid)
        if not nl_obj or not nl_obj.get("nl"):
            drop_missing_nl += 1
            continue
        pass_has_nl += 1

        ctx_obj = ctx_by_id.get(qid)
        context_data = (ctx_obj or {}).get("context_data", {})
        if not context_data:
            drop_missing_context += 1
            continue
        pass_has_context += 1

        merged.append((qid, obj, str(nl_obj["nl"]), context_data, meta))
        update_type_counters(type_counters, "candidates", meta)

    if len(merged) < args.target_n:
        raise RuntimeError(
            f"Not enough usable queries after filtering. "
            f"Usable={len(merged)} target={args.target_n} "
            f"missing_nl={missing_nl} missing_ctx={missing_ctx}"
        )

    rng.shuffle(merged)
    selected = merged[: args.target_n]

    # Stats for final selection
    for (_, _, _, _, meta) in selected:
        update_type_counters(type_counters, "selected_1500", meta)

    # Ensure output dirs exist
    args.out_sft.parent.mkdir(parents=True, exist_ok=True)
    args.out_dpo.parent.mkdir(parents=True, exist_ok=True)
    args.out_stats.parent.mkdir(parents=True, exist_ok=True)
    args.out_ci.parent.mkdir(parents=True, exist_ok=True)

    # Write datasets
    with args.out_sft.open("w", encoding="utf-8") as f_sft, args.out_dpo.open("w", encoding="utf-8") as f_dpo, args.out_ci.open("w", encoding="utf-8") as f_ci:
        for (qid, prov_obj, question, context_data, _meta) in selected:
            # chosen output
            chosen_output: List[Dict[str, Any]] = []
            orig_len = len(prov_obj.get("result", []) or [])
            cap_len = min(orig_len, args.max_tuples)
            num_truncated_total += int(orig_len > args.max_tuples)
            truncated_tuples_total += max(0, orig_len - args.max_tuples)

            for ans in (prov_obj.get("result", []) or [])[: args.max_tuples]:
                tup = ans.get("result", {}) or {}
                prov = ans.get("provenance", []) or []
                chosen_output.append(
                    {
                        "result": strip_result_fields(tup, args.drop_result_keys),
                        "provenance": prov,
                    }
                )
            if not chosen_output:
                continue

            # SFT record
            sft_ex = {
                "id": qid,
                "instruction": INSTRUCTION,
                "input": {"question": question, "context": context_data},
                "output": chosen_output,
            }
            f_sft.write(json.dumps(sft_ex, ensure_ascii=False) + "\n")

            # DPO record
            prompt = build_prompt(question, context_data)
            rejected_output, neg_mode = make_negative_output(chosen_output, context_data, rng)
            neg_mode_counts[neg_mode] += 1
            # CI (CORRECT INCORRECT) record
            ci_ex = {
                "id": qid,
                "instruction": INSTRUCTION,
                "input": {"question": question, "context": context_data},
                "correct": chosen_output,
                "incorrect": rejected_output,
                "incorrect_mode": neg_mode,
            }
            f_ci.write(json.dumps(ci_ex, ensure_ascii=False) + "\n")
            # DPO record
            dpo_ex = {
                "id": qid,
                "prompt": prompt,
                "chosen": json.dumps(chosen_output, ensure_ascii=False),
                "rejected": json.dumps(rejected_output, ensure_ascii=False),
            }
            f_dpo.write(json.dumps(dpo_ex, ensure_ascii=False) + "\n")

    # Write stats
    stats = {
    "usable_after_filtering": len(merged),
    "selected": len(selected),

    "counts": {
        "all_ok": all_ok,
        "pass_nonempty_result": pass_nonempty_result,
        "pass_has_nl": pass_has_nl,
        "pass_has_context": pass_has_context,
        "drop_bad_id": drop_bad_id,
        "drop_empty_result": drop_empty_result,
        "drop_missing_nl": drop_missing_nl,
        "drop_missing_context": drop_missing_context,
    },
    "truncation": {
        "num_queries_truncated": num_truncated_total,
        "total_tuples_truncated": truncated_tuples_total,
    },
    "negative_mode_counts": dict(neg_mode_counts),
    "distributions": {k: dict(v) for k, v in type_counters.items()},
}


    with args.out_stats.open("w", encoding="utf-8") as f:
        json.dump(stats, f, indent=2)

    print("[DONE] Dataset build complete.")
    print("  Filtering counts:")
    print(f"    - all_ok              : {all_ok}")
    print(f"    - pass_nonempty_result : {pass_nonempty_result}")
    print(f"    - pass_has_nl          : {pass_has_nl}")
    print(f"    - pass_has_context     : {pass_has_context}")
    print(f"    - drop_bad_id          : {drop_bad_id}")
    print(f"    - drop_empty_result    : {drop_empty_result}")
    print(f"    - drop_missing_nl      : {drop_missing_nl}")
    print(f"    - drop_missing_context : {drop_missing_context}")


if __name__ == "__main__":
    main()
