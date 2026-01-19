# src/prov_utils.py
from __future__ import annotations

import json
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Dict, Iterator, List, Optional, Set, Tuple


def table_from_token(token: str) -> Optional[str]:
    """
    Extract table name from token like <table>_<rownum>.
    Table names may contain underscores.
    """
    if "_" not in token:
        return None
    return token.rsplit("_", 1)[0]


def iter_ok_queries(jsonl_path: Path) -> Iterator[Dict[str, Any]]:
    with jsonl_path.open("r", encoding="utf-8") as f:
        for line_no, line in enumerate(f, start=1):
            line = line.strip()
            if not line:
                continue
            try:
                obj = json.loads(line)
            except json.JSONDecodeError as e:
                raise RuntimeError(f"Invalid JSON at line {line_no}: {e}") from e
            if obj.get("status") == "ok":
                yield obj


def extract_tokens_by_query(jsonl_path: Path) -> Dict[int, Dict[str, Set[str]]]:
    """
    Returns: query_id -> table -> set(tokens)
    Reads obj["result"][*]["provenance"] which is list-of-lists of tokens.
    """
    out: Dict[int, Dict[str, Set[str]]] = {}

    for obj in iter_ok_queries(jsonl_path):
        qid = obj.get("id")
        if qid is None:
            continue
        try:
            qid_int = int(qid)
        except Exception:
            continue

        table_map = out.setdefault(qid_int, {})

        for ans in obj.get("result", []) or []:
            for ws in ans.get("provenance", []) or []:
                for token in ws or []:
                    table = table_from_token(token)
                    if table is None:
                        continue
                    table_map.setdefault(table, set()).add(token)

    return out


@dataclass(frozen=True)
class PgConfig:
    host: str
    port: int
    dbname: str
    user: str
    password: str
    schema: str = "public"
    # how many tokens per IN() chunk
    chunk_size: int = 500


def rownum_col_for_table(table: str) -> str:
    """
    convention: each table has a column "<table_name>_rownum"
    containing strings like "<table_name>_<rownum>".
    """
    return f"{table}_rownum"
