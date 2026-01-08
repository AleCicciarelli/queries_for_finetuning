import json
import re
from collections import defaultdict

# ---------- CONFIG ----------
PROV_FILE = "relstack_prov.jsonl"
SQL_NL_FILE = "sqltonl.json"          # nuovo sql-to-nl con meta
OUTPUT_PREFIX = "relstack_dataset"    # produrrà relstack_dataset_base.json, etc.
MAX_IDS = 500

INSTRUCTION = (
    "Return ONLY the JSON output. In each result, the 'why' field must be a list of witness sets. "
    "Each witness set must be a list of one or more elements, where each element is formatted as 'table_row'. "
)
# ----------------------------


# ---------- OPTIONAL: parse meta from prov.sql_query_prov (fallback) ----------
_META_RE = re.compile(r"--\s*meta\s*(\{.*?\})", re.IGNORECASE)

def parse_meta_from_prov_sql(sql_query_prov: str):
    if not sql_query_prov:
        return None
    m = _META_RE.search(sql_query_prov)
    if not m:
        return None
    try:
        return json.loads(m.group(1))
    except Exception:
        return None


def normalize_meta(meta: dict | None) -> dict:
    """
    Normalizza i campi e soprattutto la nozione di 'except'.
    - Se esiste has_except -> usa quello
    - Altrimenti usa has_negation come proxy di EXCEPT (come nel tuo esempio storico)
    """
    meta = meta or {}
    return {
        "num_joins": int(meta.get("num_joins", 0) or 0),
        "num_aggregates": int(meta.get("num_aggregates", 0) or 0),
        "has_union": bool(meta.get("has_union", False)),
        "has_intersect": bool(meta.get("has_intersect", False)),
        "has_except": bool(meta.get("has_except", meta.get("has_negation", False))),
    }


def difficulty_from_meta(meta: dict | None) -> str:
    """
    Regole EXACT come le hai definite.
    """
    m = normalize_meta(meta)

    joins = m["num_joins"]
    aggs = m["num_aggregates"]
    has_union = m["has_union"]
    has_intersect = m["has_intersect"]
    has_except = m["has_except"]

    # base
    if joins == 0 and aggs == 0 and (not has_intersect) and (not has_union) and (not has_except):
        return "base"

    # level 1
    if joins == 1 and aggs == 0 and (not has_intersect) and (not has_union) and (not has_except):
        return "level1"

    # level 2
    if joins >= 2 and aggs == 0 and (not has_intersect) and (not has_union) and (not has_except):
        return "level2"

    # level 3
    if joins == 0 and aggs >= 1 and (not has_intersect) and (not has_union) and (not has_except):
        return "level3"

    # level 4
    if joins == 0 and aggs == 0 and (not has_intersect) and has_union and (not has_except):
        return "level4"

    # level 5
    if joins == 0 and aggs == 0 and (not has_intersect) and (not has_union) and has_except:
        return "level5"

    return "other"


# ---------- LOAD sql + nl + meta ----------
with open(SQL_NL_FILE, "r") as f:
    sql_nl_data = json.load(f)

sql_nl_by_id = {}
for item in sql_nl_data:
    qid = item["id"]
    sql_nl_by_id[qid] = {
        "question": item["nl"],
        "sql": item["sql"],
        "meta": item.get("meta", None),
    }

# ---------- LOAD provenance (jsonl) ----------
prov_by_id = {}
with open(PROV_FILE, "r") as f:
    for line in f:
        obj = json.loads(line)
        prov_by_id[obj["id"]] = obj

# ---------- MATCH IDS ----------
common_ids = sorted(set(sql_nl_by_id.keys()) & set(prov_by_id.keys()))
selected_ids = common_ids[:MAX_IDS]

print(f"Matched IDs: {len(common_ids)}")
print(f"Using first {len(selected_ids)} IDs")

# ---------- BUILD DATASETS BY DIFFICULTY ----------
datasets = defaultdict(list)
skipped = 0

for qid in selected_ids:
    prov_item = prov_by_id[qid]

    result = prov_item.get("result")
    if not result or result.get("tuples") is None:
        skipped += 1
        continue

    tuples = result.get("tuples", [])
    if not tuples:
        skipped += 1
        continue

    # prefer meta from sqltonl; fallback to parsed meta from prov sql
    meta = sql_nl_by_id[qid].get("meta")
    if not meta:
        meta = parse_meta_from_prov_sql(prov_item.get("sql_query_prov", ""))

    level = difficulty_from_meta(meta)

    results = []
    for t in tuples:
        results.append({
            "answer": t["values"],
            "why": t["why"]
        })

    example = {
        "instruction": INSTRUCTION,
        "input": {
            "question": sql_nl_by_id[qid]["question"],
            "sql": sql_nl_by_id[qid]["sql"],
            "meta": normalize_meta(meta),   # utile e coerente
            "difficulty": level
        },
        "output": {
            "results": results
        }
    }

    datasets[level].append(example)

# ---------- SAVE ----------
for level in ["base", "level1", "level2", "level3", "level4", "level5", "other"]:
    data = datasets.get(level, [])
    if not data:
        continue
    out_file = f"{OUTPUT_PREFIX}_{level}.json"
    with open(out_file, "w") as f:
        json.dump(data, f, indent=2)
    print(f"Saved {len(data)} examples to: {out_file}")

print(f"Skipped: {skipped}")
