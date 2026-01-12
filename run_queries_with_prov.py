import csv
import io
import re
import re
import subprocess
import json
import shlex
from datetime import datetime
DB = "tpch"

DB = "relf1"
USER = "cicciara"
HOST = "127.0.0.1"
PORT = "5432"

INPUT_SQL = "queries_tpch_limit4.sql"
OUTPUT_JSONL = "queries_with_prov/tpch_limit_prov.jsonl"

# -------------------------
# Compute stats from JSONL
# -------------------------
def compute_stats_from_jsonl(jsonl_path: str, db_name: str, input_sql: str):
    ok_queries = 0
    failed_queries = 0
    total_answer_tuples = 0
    total_why_sets = 0
    total_why_items = 0
    total_lines = 0

    with open(jsonl_path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            total_lines += 1
            rec = json.loads(line)

            if "error" in rec:
                failed_queries += 1
                continue

            ok_queries += 1
            tuples = rec.get("output", [])
            total_answer_tuples += len(tuples)

            for t in tuples:
                w = t.get("provenance", [])
                total_why_sets += len(w)
                total_why_items += sum(len(ws) for ws in w)

    avg_answers_per_query = (total_answer_tuples / ok_queries) if ok_queries else 0.0
    avg_why_items_per_query = (total_why_items / ok_queries) if ok_queries else 0.0
    avg_why_items_per_tuple = (total_why_items / total_answer_tuples) if total_answer_tuples else 0.0
    effective_size_proxy = ok_queries + total_answer_tuples + total_why_items

    stats = {
        "db": db_name,
        "input_sql": input_sql,
        "output_jsonl": jsonl_path,
        "generated_at": datetime.now().isoformat(timespec="seconds"),
        "total_lines_in_jsonl": total_lines,
        "ok_queries": ok_queries,
        "failed_queries": failed_queries,
        "total_answer_tuples": total_answer_tuples,
        "total_why_sets": total_why_sets,
        "total_why_items": total_why_items,
        "avg_answers_per_query": avg_answers_per_query,
        "avg_why_items_per_query": avg_why_items_per_query,
        "avg_why_items_per_tuple": avg_why_items_per_tuple,
        "effective_size_proxy": effective_size_proxy
    }
    return stats

# -------------------------
# Parse why into a list
# -------------------------
WITNESS_SET_RE = re.compile(r"\{([^{}]+)\}")

def parse_why_to_list(why_raw: str):
    """
    Parse provsql sr_why strings like:
      {{a,b}}
      {{a},{b,c}}
      {{constructor_results_43},{qualifying_10}}
    into list-of-lists without braces.
    """
    if why_raw is None:
        return []

    s = why_raw.strip()
    if not s or s.lower() == "null":
        return []

    # trova tutti i witness set { ... }
    matches = WITNESS_SET_RE.findall(s)
    if not matches:
        return []

    out = []
    for m in matches:
        # split sugli item e rimuove eventuali brace residue
        items = [
            x.strip().strip("{}")
            for x in m.split(",")
            if x.strip()
        ]
        out.append(items)

    return out

# -------------------------
# Provenance rewriter
# -------------------------
PROV_COL_ALIAS = "sr_why"
PROV_EXPR = "provsql.sr_why(provsql.provenance(), 'provmap')"
SETOP_PATTERN = re.compile(r"\b(UNION|EXCEPT)\b", re.IGNORECASE)

def strip_leading_meta(sql: str):
    sql = sql.strip()
    lines = sql.splitlines()
    if lines and lines[0].lstrip().startswith("-- meta"):
        return lines[0], "\n".join(lines[1:]).strip()
    return None, sql

def has_top_level_setop(sql: str) -> bool:
    depth = 0
    upper = sql.upper()
    i = 0
    while i < len(sql):
        ch = sql[i]
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth = max(0, depth - 1)
        elif depth == 0:
            m = SETOP_PATTERN.match(upper, i)
            if m:
                return True
        i += 1
    return False

def insert_before_top_level_from(sql: str, insertion: str) -> str:
    depth = 0
    upper = sql.upper()
    i = 0
    while i < len(sql):
        ch = sql[i]
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth = max(0, depth - 1)

        if depth == 0:
            if upper.startswith(" FROM", i) or upper.startswith("\nFROM", i) or upper.startswith("\tFROM", i):
                return sql[:i] + insertion + sql[i:]
        i += 1

    # fallback (molto raro con query smith): wrap totale
    return f"SELECT q.*{insertion} FROM (\n{sql}\n) AS q"

def add_provenance(sql: str) -> str:
    """
    - Se set-op top-level: wrap in subquery e aggiungi sr_why fuori.
    - Altrimenti: aggiungi sr_why nella SELECT list prima del FROM.
    Preserva eventuale riga iniziale '-- meta ...'
    """
    meta, body = strip_leading_meta(sql)
    body = body.strip().rstrip(";")

    if has_top_level_setop(body):
        rewritten = (
            "SELECT q.*, "
            f"{PROV_EXPR} AS {PROV_COL_ALIAS} "
            "FROM (\n"
            f"{body}\n"
            ") AS q"
        )
    else:
        rewritten = insert_before_top_level_from(
            body,
            f", {PROV_EXPR} AS {PROV_COL_ALIAS}"
        )

    if meta:
        return meta + "\n" + rewritten + ";"
    return rewritten + ";"
INPUT_SQL = "set_queries/queries_relf1_mixedwithset.sql"
OUTPUT_JSONL = "queries_with_prov/relf1_prov.jsonl"


# -------------------------
# Provenance rewriter
# -------------------------
PROV_COL_ALIAS = "sr_why"
PROV_EXPR = "provsql.sr_why(provsql.provenance(), 'provmap')"
SETOP_PATTERN = re.compile(r"\b(UNION|EXCEPT)\b", re.IGNORECASE)

def strip_leading_meta(sql: str):
    sql = sql.strip()
    lines = sql.splitlines()
    if lines and lines[0].lstrip().startswith("-- meta"):
        return lines[0], "\n".join(lines[1:]).strip()
    return None, sql

def has_top_level_setop(sql: str) -> bool:
    depth = 0
    upper = sql.upper()
    i = 0
    while i < len(sql):
        ch = sql[i]
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth = max(0, depth - 1)
        elif depth == 0:
            m = SETOP_PATTERN.match(upper, i)
            if m:
                return True
        i += 1
    return False

def insert_before_top_level_from(sql: str, insertion: str) -> str:
    depth = 0
    upper = sql.upper()
    i = 0
    while i < len(sql):
        ch = sql[i]
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth = max(0, depth - 1)

        if depth == 0:
            if upper.startswith(" FROM", i) or upper.startswith("\nFROM", i) or upper.startswith("\tFROM", i):
                return sql[:i] + insertion + sql[i:]
        i += 1

    # fallback (molto raro con query smith): wrap totale
    return f"SELECT q.*{insertion} FROM (\n{sql}\n) AS q"

def add_provenance(sql: str) -> str:
    """
    - Se set-op top-level: wrap in subquery e aggiungi sr_why fuori.
    - Altrimenti: aggiungi sr_why nella SELECT list prima del FROM.
    Preserva eventuale riga iniziale '-- meta ...'
    """
    meta, body = strip_leading_meta(sql)
    body = body.strip().rstrip(";")

    if has_top_level_setop(body):
        rewritten = (
            "SELECT q.*, "
            f"{PROV_EXPR} AS {PROV_COL_ALIAS} "
            "FROM (\n"
            f"{body}\n"
            ") AS q"
        )
    else:
        rewritten = insert_before_top_level_from(
            body,
            f", {PROV_EXPR} AS {PROV_COL_ALIAS}"
        )

    if meta:
        return meta + "\n" + rewritten + ";"
    return rewritten + ";"

# -------------------------
# Utility
# -------------------------
def last_processed_id(path):
    try:
        with open(path) as f:
            for line in f:
                pass
        return json.loads(line)["id"]
    except FileNotFoundError:
        return 0

def run_psql(query: str) -> str:
    cmd = [
        "psql",
        "-h", HOST,
        "-U", USER,
        "-d", DB,
        "--csv",
        "-v", "ON_ERROR_STOP=1",
    ]

    proc = subprocess.run(
        cmd,
        input=query,
        text=True,
        capture_output=True
    )

    if proc.returncode != 0:
        raise RuntimeError(proc.stderr.strip())

    return proc.stdout.strip()


def load_queries(path):
    with open(path) as f:
        buffer = ""
        for line in f:
            buffer += line
            if line.rstrip().endswith(";"):
                yield buffer.strip().rstrip(";")
                buffer = ""


# -------------------------
# Main
# -------------------------
START_ID = last_processed_id(OUTPUT_JSONL) + 1



with open(OUTPUT_JSONL, "a") as out:
    for qid, query in enumerate(load_queries(INPUT_SQL), start=1):
        print(f"→ Eseguo query id={qid}")
        if qid < START_ID:
            continue
        query_prov = None
        try:
            print(f"  Query originale:\n{query}")
            query_prov = add_provenance(query)
            raw = run_psql(query_prov)
            
            if not raw.strip():
                result = []
            query_prov = add_provenance(query)
            raw = run_psql(query_prov)

            if not raw:
                result = {"tuples": []}
            else:
                reader = csv.reader(io.StringIO(raw))
                rows = list(reader)
                header = rows[0]
                data_rows = rows[1:]

                try:
                    why_idx = header.index(PROV_COL_ALIAS)
                except ValueError:
                    why_idx = None


                output = []
                for row in data_rows:

                    values = {col: row[i] for i, col in enumerate(header) if col != "provsql" and i != why_idx}

                    why_raw = row[why_idx] if why_idx is not None else None
                    why = parse_why_to_list(why_raw)

                    output.append({
                        "result": values,
                        "provenance": why
                    })

            record = {
                "id": qid,
                "sql_query_prov": query_prov,
                "result": result
                "sql_query_prov": query_prov,
                "output": output
            }
        except Exception as e:
            print(f"  Errore nell'esecuzione della query id={qid}, query={query_prov}: {e}")
            record = {
                "id": qid,
                "sql_query_prov": query_prov,
                "error": str(e)
            }

        out.write(json.dumps(record) + "\n")
# --- Compute and save statistics ---
stats = compute_stats_from_jsonl(OUTPUT_JSONL, DB, INPUT_SQL)

print("\n=== DATASET STATS ===")
for k, v in stats.items():
    print(f"{k}: {v}")

stats_path = OUTPUT_JSONL.replace(".jsonl", "_stats.json")
with open(stats_path, "w") as sf:
    json.dump(stats, sf, indent=2)

print(f"\nStats written to {stats_path}")

print(f"\n=== Done. Results written to {OUTPUT_JSONL} ===")