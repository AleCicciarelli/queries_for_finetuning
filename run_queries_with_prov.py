import re
import subprocess
import json
import shlex

DB = "relf1"
USER = "cicciara"
HOST = "127.0.0.1"
PORT = "5432"

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
        "-A",
        "-F", "\t",
        "-P", "footer=off",
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
        try:
            query_prov = add_provenance(query)
            raw = run_psql(query_prov)

            if not raw:
                result = {"tuples": []}
            else:
                lines = raw.splitlines()
                header = lines[0].split("\t")
                rows = lines[1:]

                # individua colonne speciali
                try:
                    why_idx = header.index(PROV_COL_ALIAS)
                except ValueError:
                    why_idx = None

                skip_cols = {"provsql"}

                tuples = []
                for row in rows:
                    fields = row.split("\t")

                    values = {}
                    for i, col in enumerate(header):
                        if col in skip_cols or i == why_idx:
                            continue
                        values[col] = fields[i]

                    why = fields[why_idx] if why_idx is not None else None

                    tuples.append({
                        "values": values,
                        "why": why
                    })

                result = {"tuples": tuples}

            record = {
                "id": qid,
                "sql_query_prov": query_prov,
                "result": result
            }

        except Exception as e:
            record = {
                "id": qid,
                "sql_query_prov": query_prov,
                "error": str(e)
            }

        out.write(json.dumps(record) + "\n")

print(f"\n=== Done. Results written to {OUTPUT_JSONL} ===")
