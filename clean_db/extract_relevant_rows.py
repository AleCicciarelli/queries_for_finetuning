#!/usr/bin/env python3
import json
import argparse
from collections import defaultdict
from pathlib import Path

# =========================
# Pipeline configuration
# =========================
INPUT_JSONL = Path("queries_with_prov/tpch_limit_noerr_prov.jsonl")
OUTPUT_ROWS_JSON = Path("artifacts/tpch_relevant_rows.json")
OUTPUT_STATS_JSON = Path("artifacts/tpch_relevant_rows_stats.json")

def table_from_token(token: str) -> str | None:
    """
    Extract table name from a provenance token of the form <table>_<id>.
    Table names may contain underscores.
    """
    if "_" not in token:
        return None
    return token.rsplit("_", 1)[0]

def extract_relevant_tokens(input_path: Path):
    table_to_tokens = defaultdict(set)
    seen = 0

    with input_path.open("r", encoding="utf-8") as f:
        for line_no, line in enumerate(f, start=1):
            line = line.strip()
            if not line:
                continue

            obj = json.loads(line)
            if obj.get("status") != "ok":
                continue

            for ans in obj.get("result", []):
                for ws in ans.get("provenance", []):
                    for token in ws:
                        table = table_from_token(token)
                        if table is None:
                            continue
                        table_to_tokens[table].add(token)
                        seen += 1

    tokens_out = {t: sorted(tokens) for t, tokens in table_to_tokens.items()}

    total_relevant_rows = sum(len(tokens) for tokens in tokens_out.values())

    stats = {
        "tables_involved": len(tokens_out),
        "unique_relevant_rows": total_relevant_rows,
        "total_tokens_observed": seen,  # includes duplicates
        "rows_per_table": {t: len(v) for t, v in tokens_out.items()}
    }

    # Console report (useful during pipeline runs)
    print("[STATS] Provenance-driven row extraction")
    print(f"  Tables involved        : {stats['tables_involved']}")
    print(f"  Unique relevant rows   : {stats['unique_relevant_rows']}")
    print(f"  Total tokens observed  : {stats['total_tokens_observed']} (with duplicates)")
    print("  Rows per table:")
    for t, n in sorted(stats["rows_per_table"].items(), key=lambda kv: kv[1], reverse=True):
        print(f"    - {t}: {n}")

    return tokens_out, stats

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--input", help="Override input JSONL path")
    ap.add_argument("--tokens-output", help="Override output tokens JSON path")
    ap.add_argument("--stats-output", help="Override output stats JSON path")
    args = ap.parse_args()

    input_path = Path(args.input) if args.input else INPUT_JSONL
    tokens_out_path = Path(args.tokens_output) if args.tokens_output else OUTPUT_ROWS_JSON
    stats_out_path = Path(args.stats_output) if args.stats_output else OUTPUT_STATS_JSON

    tokens_out_path.parent.mkdir(parents=True, exist_ok=True)
    stats_out_path.parent.mkdir(parents=True, exist_ok=True)

    print(f"[INFO] Input JSONL      : {input_path}")
    print(f"[INFO] Tokens output   : {tokens_out_path}")
    print(f"[INFO] Stats output    : {stats_out_path}")

    tokens_out, stats = extract_relevant_tokens(input_path)

    with tokens_out_path.open("w", encoding="utf-8") as f:
        json.dump(tokens_out, f, indent=2)

    with stats_out_path.open("w", encoding="utf-8") as f:
        json.dump(stats, f, indent=2)

    print("[DONE] Relevant provenance tokens and statistics saved.")

if __name__ == "__main__":
    main()
