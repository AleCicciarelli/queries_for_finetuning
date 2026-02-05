#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import random
import re
from collections import Counter
from copy import deepcopy
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

from utils.prov_utils import iter_ok_queries  # richiede PYTHONPATH=src

# --- COSTANTI E REGEX ---
''' old instruction 
INSTRUCTION = (
    "Return ONLY valid JSON (no extra text).Output MUST be a JSON array.\n"
    "Each array element MUST be an object with EXACTLY these keys:\n"
    "- result: an object representing one output tuple\n"
    "- provenance: a Why[X] provenance expression for that tuple, where each provenance identifier\n"
    "  is a string formatted as \"<table_name>_<row_number>\" (e.g., \"standings_35\").\n"
    "  The provenance field MUST be a list of lists of provenance identifiers.\n"
    "  Each inner list contains the provenance identifiers that together produce the result tuple."
    "JSON schema:\n"
    "[{\"result\": {...}, \"provenance\": [[\"t1\",\"t2\"], [\"t3\"], ...]}, ...]\n"
    "Do NOT output SQL, explanations, markdown, or additional keys."
    "If there are no results, return []."
)
'''
INSTRUCTION = (
    "Answer the QUESTION using the provided CONTEXT_DATA.\n"
    "Return ONLY valid JSON and nothing else.\n"
    "The entire output MUST be a JSON array.\n\n"
    "Each array element MUST be an object with EXACTLY these keys:\n"
    "- result: an object representing one output tuple\n"
    "- provenance: a Why[X] provenance expression for that tuple\n\n"
    "Provenance rules:\n"
    "- Each provenance identifier MUST be a string formatted as \"<table_name>_<row_number>\" "
    "(e.g., \"standings_35\").\n"
    "- The provenance field MUST be a list of lists of provenance identifiers.\n"
    "- Each inner list contains the identifiers that together produce the result tuple.\n\n"
    "JSON schema:\n"
    "[{\"result\": {...}, \"provenance\": [[\"t1\", \"t2\"], [\"t3\"], ...]}, ...]\n\n"
    "Constraints:\n"
    "- Do NOT output SQL.\n"
    "- Do NOT output explanations, comments, markdown, or code fences.\n"
    "- Do NOT add extra keys.\n"
    "- If there are no results, return []."
)

# token id pattern: "<table>_<rownum>" where table may include underscores
ID_RE = re.compile(r"^(.+)_([0-9]+)$")

# -----------------------
# Cleaning and Meta Utility Functions
# -----------------------
META_RE = re.compile(r"--\s*meta\s*(\{.*?\})", re.IGNORECASE | re.DOTALL)

def clean_sql_query(raw_sql: str) -> str:
    if not raw_sql: return ""
    lines = raw_sql.splitlines()
    sql_clean = "\n".join([l for l in lines if not l.strip().startswith("--")]).strip()
    nested_sr_why_re = r',\s*provsql\.sr_why\s*\([^)]*\(.*?\)[^)]*\)\s*(?:AS\s+\w+)?'
    sql_clean = re.sub(nested_sr_why_re, '', sql_clean, flags=re.IGNORECASE | re.DOTALL)
    sql_clean = re.sub(nested_sr_why_re.lstrip(r',\s*'), '', sql_clean, flags=re.IGNORECASE | re.DOTALL)
    sql_clean = re.sub(r',\s+FROM', ' FROM', sql_clean, flags=re.IGNORECASE)
    return sql_clean.strip()

def clean_context_data(context_data: Dict[str, Any]) -> Dict[str, Any]:
    new_context = deepcopy(context_data)
    for table_name, rows in new_context.items():
        if isinstance(rows, dict):
            for row_id, row_data in rows.items():
                if isinstance(row_data, dict):
                    row_data.pop("provsql", None)
    return new_context

def meta_from_sql_query_prov(sql_query_prov: str) -> Optional[Dict[str, Any]]:
    if not sql_query_prov: return None
    m = META_RE.search(sql_query_prov)
    return json.loads(m.group(1)) if m else None

def normalize_meta(meta: Dict[str, Any]) -> Dict[str, Any]:
    def b(x): return bool(x)
    def i(x):
        try: return int(x)
        except: return 0
    return {
        "num_joins": i(meta.get("num_joins", 0)),
        "num_aggregates": i(meta.get("num_aggregates", 0)),
        "has_union": b(meta.get("has_union", False)),
        "has_intersect": b(meta.get("has_intersect", False)),
        "has_negation": b(meta.get("has_negation", False)),
    }

def type_key(meta: Dict[str, Any]) -> str:
    m = normalize_meta(meta)
    return f"joins={m['num_joins']};aggs={m['num_aggregates']};union={int(m['has_union'])};intersect={int(m['has_intersect'])};neg={int(m['has_negation'])}"

def load_json_or_jsonl(path: Path) -> List[Dict[str, Any]]:
    text = path.read_text(encoding="utf-8").strip()
    if not text: return []
    if text[0] == "[": return json.loads(text)
    return [json.loads(line) for line in text.splitlines() if line.strip()]

def index_by_id(objs: List[Dict[str, Any]]) -> Dict[int, Dict[str, Any]]:
    out = {}
    for o in objs:
        if "id" in o: out[int(o["id"])] = o
    return out

def build_prompt(question: str, sql: str, context_data: Dict[str, Any]) -> str:
    return (
        f"{INSTRUCTION}\n\n"
        f"QUESTION:\n{sql}\n\n"
        f"CONTEXT_DATA (rows):\n{json.dumps(context_data, ensure_ascii=False)}\n"
    )

# -----------------------
# Negative output generation 
# -----------------------
def make_negative_output(
    chosen_output: List[Dict[str, Any]],
    context_data: Dict[str, Any],
    rng: random.Random,
    mode_weights: Optional[Dict[str, float]] = None,
    cap_edits: int = 10,
) -> tuple[List[Dict[str, Any]], str]:
    """
    Produce rejected output by applying MULTIPLE edits, typically one per selected tuple.

    - Pick n_edits in [2, min(cap_edits, len(output))].
    - Pick n_edits distinct tuples.
    - For each tuple, pick one mode (weighted) and apply it to that tuple.
    - Mostly provenance-only edits; optional rare shape edit (merge_two_tuples) with low weight.
    """

    if not chosen_output:
        return chosen_output, "fallback_empty"

    # default weights tuned to include your observed failure modes
    if mode_weights is None:
        mode_weights = {
            # token edits
            "replace_token_same_table": 0.20,
            "replace_token_any_table": 0.06,

            # set/structure edits within a tuple
            "add_token_ws": 0.12,
            "remove_token_ws": 0.12,
            "add_set_singleton": 0.14,
            "add_set_multiple": 0.10,
            "remove_set": 0.08,

            # your observed id corruption
            "dup_table_prefix": 0.08,           # nation_1 -> nation_nation_1
            "dup_row_suffix": 0.08,             # users_1 -> users_1_1

            # your observed flattening error
            "flatten_singletons_to_one_ws": 0.10,

            # rare shape error (collapsing tuples)
            "merge_two_tuples": 0.02,
        }

    rejected = deepcopy(chosen_output)

    # context tokens: table -> [token...]
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

    def ws_mode_length(prov: list) -> int:
        lens = [len(ws) for ws in prov if isinstance(ws, list) and len(ws) >= 1]
        if not lens:
            return 1
        return max(set(lens), key=lens.count)  # mode

    def dup_table_prefix(tok: str) -> Optional[str]:
        m = ID_RE.match(tok)
        if not m:
            return None
        table, row = m.group(1), m.group(2)
        return f"{table}_{table}_{row}"

    def dup_row_suffix(tok: str) -> Optional[str]:
        m = ID_RE.match(tok)
        if not m:
            return None
        table, row = m.group(1), m.group(2)
        return f"{table}_{row}_{row}"

    # ---- core per-tuple apply
    def try_apply(mode: str, ti: int) -> bool:
        if ti < 0 or ti >= len(rejected):
            return False

        ex = rejected[ti]
        prov = ex.get("provenance")
        if not isinstance(prov, list) or len(prov) == 0:
            return False

        # Some modes don't require picking a ws (e.g., flatten)
        # Others do; we try a few attempts within the tuple.
        for _attempt in range(6):
            wi = rng.randrange(len(prov))
            ws = prov[wi]
            if not isinstance(ws, list) or len(ws) == 0:
                continue

            # --- modes ---
            if mode == "add_set_singleton":
                toks = all_ctx_tokens()
                if not toks:
                    return False
                existing = {tuple(ws0) for ws0 in prov if isinstance(ws0, list)}
                candidates = [[tok] for tok in toks if (tok,) not in existing]
                if not candidates:
                    return False
                prov2 = list(prov)
                prov2.append(rng.choice(candidates))
                ex["provenance"] = prov2
                return True

            if mode == "add_set_multiple":
                toks = all_ctx_tokens()
                k = max(2, min(ws_mode_length(prov), 4))
                if len(toks) < k:
                    return False
                existing = {tuple(sorted(ws0)) for ws0 in prov if isinstance(ws0, list)}
                for _ in range(12):
                    new_ws = rng.sample(toks, k)
                    if tuple(sorted(new_ws)) not in existing:
                        prov2 = list(prov)
                        prov2.append(new_ws)
                        ex["provenance"] = prov2
                        return True
                return False

            if mode == "add_token_ws":
                pool = [tok for tok in all_ctx_tokens() if tok not in ws]
                if not pool:
                    return False
                ws2 = list(ws)
                ws2.append(rng.choice(pool))
                prov2 = list(prov)
                prov2[wi] = ws2
                ex["provenance"] = prov2
                return True

            if mode == "remove_token_ws":
                if len(ws) < 2:
                    continue
                kept = ws[0] if isinstance(ws[0], str) else rng.choice(ws)
                prov2 = list(prov)
                prov2[wi] = [kept]
                ex["provenance"] = prov2
                return True

            if mode == "remove_set":
                if len(prov) < 2:
                    return False
                prov2 = list(prov)
                prov2.pop(rng.randrange(len(prov2)))
                ex["provenance"] = prov2
                return True

            if mode == "replace_token_same_table":
                pos = rng.randrange(len(ws))
                tok = ws[pos]
                if not (isinstance(tok, str) and "_" in tok):
                    continue  # <-- FIX: era "continue" fuori loop nel tuo snippet
                table = tok.rsplit("_", 1)[0]
                pool = [t for t in ctx_tokens.get(table, []) if t not in ws]
                if not pool:
                    return False
                ws2 = list(ws)
                ws2[pos] = rng.choice(pool)
                prov2 = list(prov)
                prov2[wi] = ws2
                ex["provenance"] = prov2
                return True

            if mode == "replace_token_any_table":
                pos = rng.randrange(len(ws))
                tok_pool = [t for t in all_ctx_tokens() if t not in ws]
                if not tok_pool:
                    return False
                ws2 = list(ws)
                ws2[pos] = rng.choice(tok_pool)
                prov2 = list(prov)
                prov2[wi] = ws2
                ex["provenance"] = prov2
                return True

            if mode == "dup_table_prefix":
                pos = rng.randrange(len(ws))
                tok = ws[pos]
                if not isinstance(tok, str):
                    continue
                new_tok = dup_table_prefix(tok)
                if not new_tok:
                    continue
                ws2 = list(ws)
                ws2[pos] = new_tok
                prov2 = list(prov)
                prov2[wi] = ws2
                ex["provenance"] = prov2
                return True

            if mode == "dup_row_suffix":
                pos = rng.randrange(len(ws))
                tok = ws[pos]
                if not isinstance(tok, str):
                    continue
                new_tok = dup_row_suffix(tok)
                if not new_tok:
                    continue
                ws2 = list(ws)
                ws2[pos] = new_tok
                prov2 = list(prov)
                prov2[wi] = ws2
                ex["provenance"] = prov2
                return True

            if mode == "flatten_singletons_to_one_ws":
                # requires at least 2 singleton ws
                singletons = [ws0 for ws0 in prov if isinstance(ws0, list) and len(ws0) == 1 and isinstance(ws0[0], str)]
                if len(singletons) < 2:
                    return False
                merged_ws = [ws0[0] for ws0 in singletons]
                ex["provenance"] = [merged_ws]
                return True

            if mode == "merge_two_tuples":
                # shape edit: collapse 2 tuples into 1
                if len(rejected) < 2:
                    return False
                j = rng.randrange(len(rejected))
                if j == ti:
                    j = (j + 1) % len(rejected)

                prov_i = rejected[ti].get("provenance")
                prov_j = rejected[j].get("provenance")
                if not (isinstance(prov_i, list) and isinstance(prov_j, list)):
                    return False

                rejected[ti]["provenance"] = list(prov_i) + list(prov_j)
                rejected.pop(j)
                return True

        return False

    # choose how many tuples to edit
    n_out = len(rejected)
    if n_out <= 1:
        # cannot do multi-edit; do one edit
        n_edits = 1
    else:
        n_edits = rng.randint(2, min(cap_edits, n_out))

    tuple_indices = list(range(n_out))
    rng.shuffle(tuple_indices)
    tuple_indices = tuple_indices[:n_edits]

    # fallback modes (very likely applicable)
    fallback_modes = [
        "replace_token_any_table",
        "add_set_singleton",
        "add_token_ws",
        "dup_row_suffix",
    ]

    edits_done = 0
    modes_used: List[str] = []

    for ti in tuple_indices:
        # note: list length might shrink if merge_two_tuples happens
        if ti >= len(rejected):
            continue

        mode = pick_mode()
        if try_apply(mode, ti):
            edits_done += 1
            modes_used.append(mode)
            continue

        # fallback chain on same tuple
        applied = False
        for fb in fallback_modes:
            if ti < len(rejected) and try_apply(fb, ti):
                edits_done += 1
                modes_used.append(f"fb:{fb}")
                applied = True
                break
        if not applied:
            modes_used.append("noedit")

    if edits_done == 0:
        return rejected, "fallback_noedit"

    # keep label readable
    label = f"multi_{edits_done}:" + ",".join(modes_used[:6])
    return rejected, label


# -----------------------
# Main Execution
# -----------------------
def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--prov-jsonl", type=Path, required=True)
    ap.add_argument("--nl-file", type=Path, required=True)
    ap.add_argument("--context-jsonl", type=Path, required=True)
    ap.add_argument("--out-dir", type=Path, default=Path("artifacts/tpch/sql_split"))
    ap.add_argument("--target-n", type=int, default=1500)
    ap.add_argument("--seed", type=int, default=7)
    ap.add_argument("--max-tuples", type=int, default=10)
    args = ap.parse_args()

    rng = random.Random(args.seed)
    nl_by_id = index_by_id(load_json_or_jsonl(args.nl_file))
    ctx_by_id = index_by_id(load_json_or_jsonl(args.context_jsonl))

    stats = {
        "overall": {"total_processed": 0, "total_selected": 0},
        "filtering": Counter(),
        "categories": {},
    }

    merged: List[Dict[str, Any]] = []

    # STEP 1: scan + merge
    for obj in iter_ok_queries(args.prov_jsonl):
        stats["overall"]["total_processed"] += 1
        raw_sql = obj.get("sql_query_prov", "")
        meta_raw = meta_from_sql_query_prov(raw_sql)
        if not meta_raw:
            stats["filtering"]["missing_meta"] += 1
            continue

        qid = int(obj.get("id"))
        if qid not in nl_by_id:
            stats["filtering"]["missing_nl"] += 1
            continue
        if qid not in ctx_by_id:
            stats["filtering"]["missing_context"] += 1
            continue

        sql_clean = clean_sql_query(raw_sql)
        context_clean = clean_context_data(ctx_by_id[qid].get("context_data", {}))
        res = obj.get("result", [])
        if not res:
            stats["filtering"]["empty_result"] += 1
            continue

        merged.append(
            {
                "id": qid,
                "sql": sql_clean,
                "question": str(nl_by_id[qid]["nl"]),
                "context": context_clean,
                "meta": normalize_meta(meta_raw),
                "result": res,
            }
        )

    # STEP 2: categorize
    datasets_map = {
        "1_easy_no_join": [],
        "2_medium_join": [],
        "3_has_aggr": [],
        "4_has_union": [],
        "5_has_all": [],
    }
    for d in merged:
        m = d["meta"]
        has_set = m["has_union"] or m["has_intersect"] or m["has_negation"]
        if m["num_joins"] == 0 and m["num_aggregates"] == 0 and not has_set:
            target = "1_easy_no_join"
        elif m["num_joins"] >= 1 and m["num_aggregates"] == 0 and not has_set:
            target = "2_medium_join"
        elif m["num_aggregates"] > 0 and not has_set:
            target = "3_has_aggr"
        elif m["has_union"] and not (m["has_intersect"] or m["has_negation"]):
            target = "4_has_union"
        else:
            target = "5_has_all"
        datasets_map[target].append(d)

    # STEP 3: write output
    args.out_dir.mkdir(parents=True, exist_ok=True)
    neg_mode_counts = Counter()

    for cat, items in datasets_map.items():
        if not items:
            continue
        rng.shuffle(items)
        selected = items[: args.target_n]

        dpo_path = args.out_dir / f"dpo_{cat}.jsonl"
        cat_type_dist = Counter()

        with dpo_path.open("w", encoding="utf-8") as f_dpo:
            for d in selected:
                cat_type_dist[type_key(d["meta"])] += 1

                chosen_output = [
                    {"result": r.get("result", {}), "provenance": r.get("provenance", [])}
                    for r in d["result"][: args.max_tuples]
                ]

                rejected_output, neg_mode = make_negative_output(chosen_output, d["context"], rng)
                neg_mode_counts[neg_mode] += 1

                f_dpo.write(
                    json.dumps(
                        {
                            "id": d["id"],
                            "prompt": build_prompt(d["question"], d["sql"], d["context"]),
                            "chosen": json.dumps(chosen_output, ensure_ascii=False),
                            "rejected": json.dumps(rejected_output, ensure_ascii=False),
                            "negative_mode": neg_mode,
                        },
                        ensure_ascii=False,
                    )
                    + "\n"
                )

        stats["categories"][cat] = {
            "count": len(selected),
            "type_distribution": dict(cat_type_dist),
        }
        stats["overall"]["total_selected"] += len(selected)

    # STEP 4: save stats
    stats["negative_modes"] = dict(neg_mode_counts)
    stats_path = args.out_dir / "ft_split_stats.json"
    with stats_path.open("w", encoding="utf-8") as f:
        json.dump(stats, f, indent=4, ensure_ascii=False)

    print(f"\n✅ Build completato. File salvati in {args.out_dir}")
    print(f"📊 Statistiche salvate in {stats_path}")


if __name__ == "__main__":
    """
    how to run
    python3 scripts/build_ft_dataset_split_per_type.py \
        --prov-jsonl queries_with_prov/tpch_limit_noerr_prov.jsonl \
        --nl-file nl_queries/sql_nl_new_tpch_llamalatest.json \
        --context-jsonl artifacts/tpch_context_data.jsonl \
        --out-dir dpo_dataset/tpch/sql_split/new_negatives \
        --target-n 1500 \
        --max-tuples 10 \
        --seed 7
    """
    main()