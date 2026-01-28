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

META_RE = re.compile(r"--\s*meta\s*(\{.*?\})", re.IGNORECASE | re.DOTALL)

# -----------------------
# Utility di pulizia e Meta
# -----------------------
def clean_sql_query(raw_sql: str) -> str:
    if not raw_sql: return ""
    lines = raw_sql.splitlines()
    sql_clean = "\n".join([l for l in lines if not l.strip().startswith("--")]).strip()
    nested_sr_why_re = r',\s*provsql\.sr_why\s*\([^)]*\(.*?\)[^)]*\)\s*(?:AS\s+\w+)?'
    sql_clean = re.sub(nested_sr_why_re, '', sql_clean, flags=re.IGNORECASE | re.DOTALL)
    sql_clean = re.sub(nested_sr_why_re.lstrip(',\s*'), '', sql_clean, flags=re.IGNORECASE | re.DOTALL)
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

# Placeholder della funzione di generazione negativi (utilizza la tua esistente)
def make_negative_output(chosen_output, context_data, rng):
    # La tua logica 'make_negative_output' va qui
    return deepcopy(chosen_output), "fallback_noedit" 

# -----------------------
# Main Execution
# -----------------------
def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--prov-jsonl", type=Path, required=True)
    ap.add_argument("--nl-file", type=Path, required=True)
    ap.add_argument("--context-jsonl", type=Path, required=True)
    ap.add_argument("--out-dir", type=Path, default=Path("artifacts/relf1/sql_split"))
    ap.add_argument("--target-n", type=int, default=1500)
    ap.add_argument("--seed", type=int, default=7)
    ap.add_argument("--max-tuples", type=int, default=10)
    args = ap.parse_args()

    rng = random.Random(args.seed)
    nl_by_id = index_by_id(load_json_or_jsonl(args.nl_file))
    ctx_by_id = index_by_id(load_json_or_jsonl(args.context_jsonl))

    # Stats containers
    stats = {
        "overall": {"total_processed": 0, "total_selected": 0},
        "filtering": Counter(),
        "categories": {}
    }
    
    merged = []
    
    # STEP 1: Scansione e Pulizia con Stats
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

        merged.append({
            "id": qid,
            "sql": sql_clean,
            "question": str(nl_by_id[qid]["nl"]),
            "context": context_clean,
            "meta": normalize_meta(meta_raw),
            "result": res
        })

    # STEP 2: Categorizzazione
    datasets_map = {"1_easy_no_join": [], "2_medium_join": [], "3_has_aggr": [], "4_has_union": [], "5_has_all": []}
    for d in merged:
        m = d['meta']
        has_set = m['has_union'] or m['has_intersect'] or m['has_negation']
        if m['num_joins'] == 0 and m['num_aggregates'] == 0 and not has_set: target = "1_easy_no_join"
        elif m['num_joins'] >= 1 and m['num_aggregates'] == 0 and not has_set: target = "2_medium_join"
        elif m['num_aggregates'] > 0 and not has_set: target = "3_has_aggr"
        elif m['has_union'] and not (m['has_intersect'] or m['has_negation']): target = "4_has_union"
        else: target = "5_has_all"
        datasets_map[target].append(d)

    # STEP 3: Scrittura e Stats Finali
    args.out_dir.mkdir(parents=True, exist_ok=True)
    neg_mode_counts = Counter()
    
    for cat, items in datasets_map.items():
        if not items: continue
        rng.shuffle(items)
        selected = items[:args.target_n]
        
        sft_path = args.out_dir / f"sft_{cat}.jsonl"
        dpo_path = args.out_dir / f"dpo_{cat}.jsonl"
        
        cat_type_dist = Counter()

        with sft_path.open("w") as f_sft, dpo_path.open("w") as f_dpo:
            for d in selected:
                cat_type_dist[type_key(d['meta'])] += 1
                
                chosen_output = [{"result": r.get("result", {}), "provenance": r.get("provenance", [])} 
                                 for r in d['result'][:args.max_tuples]]
                
                # SFT record
                f_sft.write(json.dumps({
                    "id": d['id'], "instruction": INSTRUCTION,
                    "input": {"question": d['question'], "sql": d['sql'], "context": d['context']},
                    "output": chosen_output
                }, ensure_ascii=False) + "\n")
                
                # DPO record
                rejected_output, neg_mode = make_negative_output(chosen_output, d['context'], rng)
                neg_mode_counts[neg_mode] += 1
                f_dpo.write(json.dumps({
                    "id": d['id'], "prompt": build_prompt(d['question'], d['sql'], d['context']),
                    "chosen": json.dumps(chosen_output, ensure_ascii=False),
                    "rejected": json.dumps(rejected_output, ensure_ascii=False),
                    "negative_mode": neg_mode
                }, ensure_ascii=False) + "\n")

        stats["categories"][cat] = {
            "count": len(selected),
            "type_distribution": dict(cat_type_dist)
        }
        stats["overall"]["total_selected"] += len(selected)

    # STEP 4: Salvataggio Statistiche
    stats["negative_modes"] = dict(neg_mode_counts)
    stats_path = args.out_dir / "ft_split_stats.json"
    with stats_path.open("w") as f:
        json.dump(stats, f, indent=4)

    print(f"\n✅ Build completato. File salvati in {args.out_dir}")
    print(f"📊 Statistiche salvate in {stats_path}")

if __name__ == "__main__":
    '''how to run
    python3 scripts/build_ft_dataset_split_per_type.py \
        --prov-jsonl queries_with_prov/relf1_limit_noerr_prov.jsonl \
        --nl-file nl_queries/sql_nl_relf1_curated_llamalatest.json \
        --context-jsonl artifacts/relf1_context_data.jsonl \
        --out-dir artifacts/relf1/sql_split \
        --target-n 1500 \
        --max-tuples 10 \
        --seed 7
    '''
    main()