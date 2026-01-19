#!/usr/bin/env python3
import json
import argparse
import subprocess
from pathlib import Path

import psycopg2
from psycopg2.extras import execute_values
from psycopg2 import sql

def drop_foreign_keys(conn, schema: str = "public") -> dict:
    """
    Drop all FOREIGN KEY constraints in the given schema.
    Returns stats: {"before": int, "dropped": int, "after": int}.
    """
    with conn.cursor() as cur:
        # count before
        cur.execute("""
            SELECT COUNT(*)
            FROM pg_constraint c
            JOIN pg_class cl ON cl.oid = c.conrelid
            JOIN pg_namespace n ON n.oid = cl.relnamespace
            WHERE c.contype = 'f' AND n.nspname = %s;
        """, (schema,))
        before = cur.fetchone()[0]

        # list all fks to drop
        cur.execute("""
            SELECT n.nspname AS schema_name,
                   cl.relname AS table_name,
                   c.conname  AS constraint_name
            FROM pg_constraint c
            JOIN pg_class cl ON cl.oid = c.conrelid
            JOIN pg_namespace n ON n.oid = cl.relnamespace
            WHERE c.contype = 'f' AND n.nspname = %s;
        """, (schema,))
        fks = cur.fetchall()

        # drop each fk safely
        for schema_name, table_name, constraint_name in fks:
            cur.execute(
                sql.SQL("ALTER TABLE {}.{} DROP CONSTRAINT {};").format(
                    sql.Identifier(schema_name),
                    sql.Identifier(table_name),
                    sql.Identifier(constraint_name),
                )
            )

        # count after
        cur.execute("""
            SELECT COUNT(*)
            FROM pg_constraint c
            JOIN pg_class cl ON cl.oid = c.conrelid
            JOIN pg_namespace n ON n.oid = cl.relnamespace
            WHERE c.contype = 'f' AND n.nspname = %s;
        """, (schema,))
        after = cur.fetchone()[0]

    conn.commit()
    return {"before": before, "dropped": before - after, "after": after}


# =========================
# Pipeline configuration
# =========================
TOKENS_JSON = Path("artifacts/tpch_relevant_rows.json")
OUT_BUILD_STATS_JSON = Path("artifacts/tpch_curated_db_build_stats.json")

# DSN sorgente: 
SRC_DSN = "host=localhost dbname=tpch user=cicciara password=cicciara"

# Nome DB di destinazione (curated)
DST_DBNAME = "tpch_curated"

# Schema Postgres (di solito public)
SCHEMA = "public"

# suffisso colonna rownum
ROWNUM_SUFFIX = "_rownum"

COL_EXISTS = """
SELECT 1
FROM information_schema.columns
WHERE table_schema = %s
  AND table_name = %s
  AND column_name = %s
LIMIT 1;
"""

def parse_dsn_get_dbname(dsn: str) -> str:
    # semplice parsing: cerca "dbname="
    for part in dsn.split():
        if part.startswith("dbname="):
            return part.split("=", 1)[1]
    raise ValueError("SRC_DSN must include dbname=...")

def dsn_with_dbname(dsn: str, dbname: str) -> str:
    parts = dsn.split()
    parts = [p for p in parts if not p.startswith("dbname=")]
    parts.append(f"dbname={dbname}")
    return " ".join(parts)

def create_database_if_not_exists(admin_dsn: str, dbname: str):
    conn = psycopg2.connect(admin_dsn)
    try:
        conn.autocommit = True  # MUST be outside a transaction block
        cur = conn.cursor()
        try:
            cur.execute("SELECT 1 FROM pg_database WHERE datname = %s;", (dbname,))
            exists = cur.fetchone() is not None
            if exists:
                print(f"[INFO] Database already exists: {dbname}")
                return

            cur.execute(f'CREATE DATABASE "{dbname}";')
            print(f"[OK] Created database: {dbname}")
        finally:
            cur.close()
    finally:
        conn.close()


def copy_schema_schema_only(src_dbname: str, dst_dbname: str, base_dsn: str):
    """
    Copies schema from src -> dst using pg_dump --schema-only piped into psql.
    """
    # Recupera parametri host/user dal DSN per costruire comandi
    # (usiamo env PGPASSWORD per evitare prompt)
    env = dict(**{"PGPASSWORD": ""}, **dict(**__import__("os").environ))

    # prova a estrarre password= dal dsn
    for part in base_dsn.split():
        if part.startswith("password="):
            env["PGPASSWORD"] = part.split("=", 1)[1]

    # estrai host e user
    host = None
    user = None
    for part in base_dsn.split():
        if part.startswith("host="):
            host = part.split("=", 1)[1]
        if part.startswith("user="):
            user = part.split("=", 1)[1]

    dump_cmd = [
    "pg_dump",
    "--schema-only",
    "--no-owner",
    "--no-privileges",
    "-d", src_dbname,
    "--exclude-table=public.*_map",
    "--exclude-table=public.provmap",
]
    psql_cmd = ["psql", "-d", dst_dbname]

    if host:
        dump_cmd += ["-h", host]
        psql_cmd += ["-h", host]
    if user:
        dump_cmd += ["-U", user]
        psql_cmd += ["-U", user]

    print("[INFO] Copying schema via pg_dump --schema-only | psql ...")
    dump = subprocess.Popen(dump_cmd, stdout=subprocess.PIPE, env=env)
    restore = subprocess.Popen(psql_cmd, stdin=dump.stdout, stdout=subprocess.PIPE, stderr=subprocess.PIPE, env=env)
    dump.stdout.close()

    out, err = restore.communicate()
    if restore.returncode != 0:
        raise RuntimeError(f"Schema copy failed:\n{err.decode('utf-8', errors='ignore')}")
    print("[OK] Schema copied to destination DB")

def column_exists(conn, schema: str, table: str, col: str) -> bool:
    with conn.cursor() as cur:
        cur.execute(COL_EXISTS, (schema, table, col))
        return cur.fetchone() is not None
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tokens", help="Override tokens JSON path")
    ap.add_argument("--src-dsn", help="Override source DSN")
    ap.add_argument("--dst-dbname", help="Override destination dbname")
    ap.add_argument("--schema", help="Override schema (default: public)")
    ap.add_argument("--rownum-suffix", help="Override rownum suffix (default: _rownum)")
    ap.add_argument("--stats-output", help="Override stats JSON output path")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    tokens_path = Path(args.tokens) if args.tokens else TOKENS_JSON
    stats_out = Path(args.stats_output) if args.stats_output else OUT_BUILD_STATS_JSON

    src_dsn = args.src_dsn if args.src_dsn else SRC_DSN
    dst_dbname = args.dst_dbname if args.dst_dbname else DST_DBNAME
    schema = args.schema if args.schema else SCHEMA
    rownum_suffix = args.rownum_suffix if args.rownum_suffix else ROWNUM_SUFFIX

    src_dbname = parse_dsn_get_dbname(src_dsn)

    print(f"[INFO] Source DB : {src_dbname}")
    print(f"[INFO] Target DB : {dst_dbname}")
    print(f"[INFO] Tokens    : {tokens_path}")
    print(f"[INFO] Dry-run   : {args.dry_run}")

    with tokens_path.open("r", encoding="utf-8") as f:
        table_to_tokens: dict[str, list[str]] = json.load(f)

    # 1) Create destination DB (connect to postgres maintenance db)
    admin_dsn = dsn_with_dbname(src_dsn, "postgres")
    if not args.dry_run:
        create_database_if_not_exists(admin_dsn, dst_dbname)

    # 2) Copy schema (schema-only)
    if not args.dry_run:
        copy_schema_schema_only(src_dbname, dst_dbname, src_dsn)
        dst_admin_conn = psycopg2.connect(dsn_with_dbname(src_dsn, dst_dbname))
        dst_admin_conn.autocommit = False
        remaining_fk = drop_foreign_keys(dst_admin_conn, schema)
        dst_admin_conn.close()

        if remaining_fk["after"] != 0:
            raise RuntimeError(
                f"[ERROR] Expected 0 foreign keys in {dst_dbname}.{schema}, but found {remaining_fk['after']}"
            )
        print(f"[OK] Foreign keys dropped in destination DB ({dst_dbname}.{schema})")
    # 3) Populate destination tables with subset rows (cross-DB copy via client)
    # We do: SELECT subset from source -> bulk insert into destination
    src_conn = psycopg2.connect(src_dsn)
    dst_conn = psycopg2.connect(dsn_with_dbname(src_dsn, dst_dbname))
    src_conn.autocommit = False
    dst_conn.autocommit = False

    build_stats = {
        "source_db": src_dbname,
        "target_db": dst_dbname,
        "schema": schema,
        "rownum_suffix": rownum_suffix,
        "tables_requested": len(table_to_tokens),
        "rows_requested_per_table": {t: len(v) for t, v in table_to_tokens.items()},
        "rows_inserted_per_table": {},
        "skipped_missing_col": [],
    }

    for table, tokens in table_to_tokens.items():
        rownum_col = f"{table}{rownum_suffix}"
        # Skip derived provenance tables: will be regenerated on curated DB
        if table == "provmap" or table.endswith("_map"):
            print(f"[INFO] Skipping derived provenance table: {schema}.{table}")
            build_stats["rows_inserted_per_table"][table] = 0
            continue
        if not column_exists(src_conn, schema, table, rownum_col):
            print(f"[WARN] {schema}.{table}: missing column {rownum_col} in SOURCE -> skipping")
            build_stats["skipped_missing_col"].append({"table": table, "missing_col": rownum_col})
            continue

        print(f"[OK] {table}: copying subset via {rownum_col} ({len(tokens)} tokens)")

        if args.dry_run:
            build_stats["rows_inserted_per_table"][table] = None
            continue

        # Fetch subset rows from source
        with src_conn.cursor() as cur_s:
            cur_s.execute('DROP TABLE IF EXISTS tmp_keep_tokens;')
            cur_s.execute('CREATE TEMP TABLE tmp_keep_tokens(tok TEXT) ON COMMIT DROP;')
            rows = [(t,) for t in tokens]
            for i in range(0, len(rows), 5000):
                execute_values(cur_s, "INSERT INTO tmp_keep_tokens(tok) VALUES %s", rows[i:i+5000])

            cur_s.execute(
                f'''
                SELECT s.*
                FROM "{schema}"."{table}" s
                JOIN tmp_keep_tokens k
                  ON (s."{rownum_col}"::text = k.tok);
                '''
            )
            subset_rows = cur_s.fetchall()
            colnames = [desc[0] for desc in cur_s.description]

        # Truncate destination table then insert
        with dst_conn.cursor() as cur_d:
            cur_d.execute(f'TRUNCATE TABLE "{schema}"."{table}";')

            # build INSERT ... VALUES %s
            cols_sql = ", ".join([f'"{c}"' for c in colnames])
            insert_sql = f'INSERT INTO "{schema}"."{table}" ({cols_sql}) VALUES %s'
            execute_values(cur_d, insert_sql, subset_rows, page_size=5000)
            inserted = len(subset_rows)

        dst_conn.commit()
        build_stats["rows_inserted_per_table"][table] = inserted
        print(f"     inserted rows: {inserted}")

    src_conn.close()
    dst_conn.close()

    stats_out.parent.mkdir(parents=True, exist_ok=True)
    with stats_out.open("w", encoding="utf-8") as f:
        json.dump(build_stats, f, indent=2)

    print(f"[DONE] Curated database ready: {dst_dbname}")
    print(f"[DONE] Build stats saved to: {stats_out}")

if __name__ == "__main__":
    main()
