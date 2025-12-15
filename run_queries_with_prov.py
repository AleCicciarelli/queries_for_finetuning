import subprocess
import json
import shlex

DB = "tpch"
USER = "cicciara"
HOST = "127.0.0.1"
PORT = "5432"

INPUT_SQL = "queries_tpch_def.sql"
OUTPUT_JSONL = "tpch_prov.jsonl"

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
            raw = run_psql(query)

            if not raw:
                result = {"tuples": []}
            else:
                lines = raw.splitlines()
                header = lines[0].split("\t")
                rows = lines[1:]

                # individua colonne speciali
                try:
                    why_idx = header.index("sr_why")
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
                "sql_query": query,
                "result": result
            }

        except Exception as e:
            record = {
                "id": qid,
                "sql_query": query,
                "error": str(e)
            }

        out.write(json.dumps(record) + "\n")

print(f"\n=== Done. Results written to {OUTPUT_JSONL} ===")
