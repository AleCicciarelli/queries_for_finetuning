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

    ap = argparse.ArgumentParser()
    ap.add_argument("--prov-jsonl", type=Path, required=True)
    ap.add_argument("--nl-file", type=Path, required=True)
    ap.add_argument("--context-jsonl", type=Path, required=True)

    ap.add_argument("--out-sft", type=Path, default=Path("artifacts/relstack/sft_1500.jsonl"))
    ap.add_argument("--out-dpo", type=Path, default=Path("artifacts/relstack/dpo_1500.jsonl"))
    ap.add_argument("--out-ci", type=Path, default=Path("artifacts/relstack/ci_1500.jsonl"))
    ap.add_argument("--out-stats", type=Path, default=Path("artifacts/relstack/ft_1500_stats_by_type.json"))

    ap.add_argument("--target-n", type=int, default=1500)
    ap.add_argument("--seed", type=int, default=7)

    ap.add_argument("--max-tuples", type=int, default=10, help="Cap number of output tuples per query")
    ap.add_argument("--drop-result-keys", nargs="*", default=["provsql"], help="Drop keys from each result tuple")
    args = ap.parse_args()

    rng = random.Random(args.seed)
    nl_by_id = index_by_id(load_json_or_jsonl(args.nl_file))
    ctx_by_id = index_by_id(load_json_or_jsonl(args.context_jsonl))

    # Contatori e liste
    neg_mode_counts = Counter()
    merged: List[Tuple[int, Dict[str, Any], str, Dict[str, Any], Dict[str, Any]]] = []
    
    # Metriche di filtraggio
    all_ok = 0
    pass_nonempty_result = pass_has_nl = pass_has_context = 0
    drop_bad_id = drop_empty_result = drop_missing_nl = drop_missing_context = 0
    num_truncated_total = truncated_tuples_total = 0

    # STEP 1: Scansione e filtraggio (Popolamento di 'merged')
    for obj in iter_ok_queries(args.prov_jsonl):
        all_ok += 1
        meta_raw = meta_from_sql_query_prov(obj.get("sql_query_prov", ""))
        if not meta_raw:
            continue
        meta = normalize_meta(meta_raw)

        qid_raw = obj.get("id")
        try:
            qid = int(qid_raw)
        except:
            drop_bad_id += 1
            continue

        res = obj.get("result", [])
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

    # STEP 2: Smistamento nelle categorie
    datasets_map = {
        "1_easy_no_join": [],
        "2_medium_join": [],
        "3_has_aggr": [],
        "4_has_union": [],
        "5_has_all": [],
    }

    for item in merged:
        qid, obj, nl, ctx, m = item
        has_set_ops = m['has_union'] or m['has_intersect'] or m['has_negation']
        
        if m['num_joins'] == 0 and m['num_aggregates'] == 0 and not has_set_ops:
            target = "1_easy_no_join"
        elif m['num_joins'] >= 1 and m['num_aggregates'] == 0 and not has_set_ops:
            target = "2_medium_join"
        elif m['num_aggregates'] > 0 and not has_set_ops:
            target = "3_has_aggr"
        elif m['has_union'] and not (m['has_intersect'] or m['has_negation']):
            target = "4_has_union"
        else:
            target = "5_has_all"
            
        datasets_map[target].append(item)

    # STEP 3: Scrittura file e generazione DPO
    args.out_sft.parent.mkdir(parents=True, exist_ok=True)
    
    # Per le statistiche finali
    category_results = {}

    for cat_name, items in datasets_map.items():
        if not items:
            print(f"[-] Categoria {cat_name} vuota, salto.")
            continue
            
        rng.shuffle(items)
        selected_items = items[:args.target_n]
        
        sft_path = args.out_sft.parent / f"sft_{cat_name}.jsonl"
        dpo_path = args.out_sft.parent / f"dpo_{cat_name}.jsonl"
        
        cat_meta_dist = Counter()

        with sft_path.open("w", encoding="utf-8") as f_sft, \
             dpo_path.open("w", encoding="utf-8") as f_dpo:
             
            for (qid, prov_obj, question, context_data, meta) in selected_items:
                cat_meta_dist[type_key(meta)] += 1
                
                # Chosen output logic
                chosen_output = []
                orig_res = prov_obj.get("result", [])
                if len(orig_res) > args.max_tuples:
                    num_truncated_total += 1
                    truncated_tuples_total += (len(orig_res) - args.max_tuples)

                for ans in orig_res[:args.max_tuples]:
                    chosen_output.append({
                        "result": strip_result_fields(ans.get("result", {}), args.drop_result_keys),
                        "provenance": ans.get("provenance", [])
                    })

                # Rejected logic
                rejected_output, neg_mode = make_negative_output(chosen_output, context_data, rng)
                neg_mode_counts[neg_mode] += 1

                # Write records
                f_sft.write(json.dumps({"id": qid, "meta": meta, "instruction": INSTRUCTION, 
                                        "input": {"question": question, "context": context_data}, 
                                        "output": chosen_output}, ensure_ascii=False) + "\n")
                
                prompt = build_prompt(question, context_data)
                f_dpo.write(json.dumps({"id": qid, "meta": meta, "prompt": prompt, 
                                        "chosen": json.dumps(chosen_output, ensure_ascii=False), 
                                        "rejected": json.dumps(rejected_output, ensure_ascii=False),
                                        "negative_mode": neg_mode}, ensure_ascii=False) + "\n")

        category_results[cat_name] = {
            "count": len(selected_items),
            "type_distribution": dict(cat_meta_dist)
        }

    # STEP 4: Salvataggio Statistiche (Usa i dati reali del processo)
    stats = {
        "overall": {"total_usable": len(merged), "total_selected": sum(c['count'] for c in category_results.values())},
        "categories": category_results,
        "negative_modes": dict(neg_mode_counts),
        "filtering": {"all_ok": all_ok, "pass_ctx": pass_has_context, "drop_nl": drop_missing_nl},
        "truncation": {"queries": num_truncated_total, "tuples": truncated_tuples_total}
    }

    with args.out_stats.open("w", encoding="utf-8") as f:
        json.dump(stats, f, indent=2)

    print("\n✅ Build completato. Statistiche salvate.")

if __name__ == "__main__":
    '''how to run:
    python scripts/build_ft_dataset_split_per_type.py \
  --prov-jsonl queries_with_prov/relstack_limit_noerr_prov.jsonl \
  --nl-file nl_queries/sql_nl_relstack_curated_llamalatest.json \
  --context-jsonl artifacts/relstack_context_data.jsonl \
  --target-n 1500 \
  --max-tuples 10 \
  --seed 7'''
    

    main()