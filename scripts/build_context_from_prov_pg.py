#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any, Dict, List, Set

import psycopg2
import psycopg2.extras
from decimal import Decimal
from datetime import date, datetime

from utils.prov_utils import (
    PgConfig,
    extract_tokens_by_query,
    rownum_col_for_table,
)

DEFAULT_INPUT_JSONL = Path("queries_with_prov/tpch_limit_noerr_prov.jsonl")
DEFAULT_OUTPUT_CONTEXTS = Path("artifacts/tpch_context_data.jsonl")
DEFAULT_OUTPUT_STATS = Path("artifacts/tpch_context_data_stats.json")


def chunked(lst: List[str], n: int):
    for i in range(0, len(lst), n):
        yield lst[i : i + n]

def json_sanitize(x):
    """
    Convert DB types (Decimal, datetime, etc.) into JSON-serializable values.
    - Decimal -> str (safe, no precision loss)
    - date/datetime -> ISO string
    Recurses through dict/list/tuple.
    """
    if isinstance(x, Decimal):
        return str(x)
    if isinstance(x, (datetime, date)):
        return x.isoformat()
    if isinstance(x, dict):
        return {k: json_sanitize(v) for k, v in x.items()}
    if isinstance(x, list):
        return [json_sanitize(v) for v in x]
    if isinstance(x, tuple):
        return [json_sanitize(v) for v in x]
    return x


def fetch_rows_for_table(
    cur: psycopg2.extensions.cursor,
    schema: str,
    table: str,
    tokens: Set[str],
    chunk_size: int,
) -> Dict[str, Dict[str, Any]]:
    """
    Returns token -> row_dict for one table.
    Uses WHERE "<table>_rownum" IN (%s, %s, ...)
    """
    if not tokens:
        return {}

    col = rownum_col_for_table(table)

    # stable order so results are reproducible
    toks_sorted = sorted(tokens)

    out: Dict[str, Dict[str, Any]] = {}

    # Use RealDictCursor so each row is dict-like
    for chunk in chunked(toks_sorted, chunk_size):
        placeholders = ", ".join(["%s"] * len(chunk))
        sql = f'SELECT * FROM "{schema}"."{table}" WHERE "{col}" IN ({placeholders})'
        cur.execute(sql, chunk)
        rows = cur.fetchall() or []
        for r in rows:
            # r is a RealDictRow -> cast to dict
            d = dict(r)
            tok = d.get(col)
            if tok is not None:
                out[str(tok)] = d

    return out


def build_contexts(
    tokens_by_query: Dict[int, Dict[str, Set[str]]],
    pg: PgConfig,
    output_jsonl: Path,
) -> Dict[str, Any]:
    output_jsonl.parent.mkdir(parents=True, exist_ok=True)

    conn = psycopg2.connect(
        host=pg.host,
        port=pg.port,
        dbname=pg.dbname,
        user=pg.user,
        password=pg.password,
    )

    # Stats
    queries_written = 0
    total_tokens_requested = 0
    total_rows_found = 0
    missing_tokens = 0
    tables_seen = set()

    with conn:
        with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
            with output_jsonl.open("w", encoding="utf-8") as out_f:
                for qid in sorted(tokens_by_query.keys()):
                    table_map = tokens_by_query[qid]
                    context_data: Dict[str, Dict[str, Dict[str, Any]]] = {}

                    for table, toks in table_map.items():
                        tables_seen.add(table)
                        total_tokens_requested += len(toks)

                        rows_by_token = fetch_rows_for_table(
                            cur=cur,
                            schema=pg.schema,
                            table=table,
                            tokens=toks,
                            chunk_size=pg.chunk_size,
                        )

                        total_rows_found += len(rows_by_token)
                        missing_tokens += (len(toks) - len(rows_by_token))

                        # Save as: table -> token -> row
                        if rows_by_token:
                            context_data[table] = rows_by_token

                    rec = {"id": qid, "context_data": context_data}
                    out_f.write(json.dumps(json_sanitize(rec), ensure_ascii=False) + "\n")
                    queries_written += 1

    conn.close()

    stats = {
        "queries_written": queries_written,
        "tables_seen": len(tables_seen),
        "total_tokens_requested": total_tokens_requested,
        "total_rows_found": total_rows_found,
        "missing_tokens": missing_tokens,
        "missing_rate": (missing_tokens / total_tokens_requested) if total_tokens_requested else 0.0,
        "schema": pg.schema,
        "chunk_size": pg.chunk_size,
    }
    return stats


def main() -> None:
    ''' how to run:
    python scripts/build_context_from_prov_pg.py \
  --db-host localhost --db-port 5432 \
  --db-name tpch_curated --db-user USER --db-pass PASS \
  --db-schema public \
  --input-jsonl queries_with_prov/tpch_limit_noerr_prov.jsonl \
  --output-contexts artifacts/tpch_context_data.jsonl \
  --output-stats artifacts/tpch_context_data_stats.json \
  --chunk-size 500
'''
    ap = argparse.ArgumentParser()
    ap.add_argument("--input-jsonl", type=Path, default=DEFAULT_INPUT_JSONL)
    ap.add_argument("--output-contexts", type=Path, default=DEFAULT_OUTPUT_CONTEXTS)
    ap.add_argument("--output-stats", type=Path, default=DEFAULT_OUTPUT_STATS)

    ap.add_argument("--db-host", required=True)
    ap.add_argument("--db-port", type=int, default=5432)
    ap.add_argument("--db-name", required=True)
    ap.add_argument("--db-user", required=True)
    ap.add_argument("--db-pass", required=True)
    ap.add_argument("--db-schema", default="public")

    ap.add_argument("--chunk-size", type=int, default=500)

    args = ap.parse_args()

    pg = PgConfig(
        host=args.db_host,
        port=args.db_port,
        dbname=args.db_name,
        user=args.db_user,
        password=args.db_pass,
        schema=args.db_schema,
        chunk_size=args.chunk_size,
    )

    print(f"[INFO] Input JSONL      : {args.input_jsonl}")
    print(f"[INFO] Output contexts : {args.output_contexts}")
    print(f"[INFO] Output stats    : {args.output_stats}")
    print(f"[INFO] DB              : {pg.user}@{pg.host}:{pg.port}/{pg.dbname} schema={pg.schema}")
    print(f"[INFO] Chunk size      : {pg.chunk_size}")

    tokens_by_query = extract_tokens_by_query(args.input_jsonl)
    print(f"[INFO] OK queries with tokens: {len(tokens_by_query)}")

    stats = build_contexts(tokens_by_query, pg, args.output_contexts)

    args.output_stats.parent.mkdir(parents=True, exist_ok=True)
    with args.output_stats.open("w", encoding="utf-8") as f:
        json.dump(stats, f, indent=2)

    print("[DONE] Context extraction complete.")
    print(json.dumps(stats, indent=2))


if __name__ == "__main__":
    main()
