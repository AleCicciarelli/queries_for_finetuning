#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any, Dict, Iterable, Tuple


def iter_jsonl(path: Path) -> Iterable[Tuple[int, Dict[str, Any]]]:
    with path.open("r", encoding="utf-8") as f:
        for i, line in enumerate(f, start=1):
            line = line.strip()
            if not line:
                continue
            yield i, json.loads(line)


def main() -> None:
    ''' how to run:
    python3 scripts/merge_datasets_dpo.py \
        --in1 dpo_dataset/relf1/dpo_1500_plus_bad_format.jsonl --tag1 _rf \
        --in2 dpo_dataset/tpch/dpo_1500_plus_bad_format.jsonl --tag2 _t \
        --in3 dpo_dataset/relstack/dpo_1500_plus_bad_format.jsonl --tag3 _rs \
        --out dpo_dataset/dpo_dataset_merged.jsonl \
        --map_out dpo_dataset/dpo_dataset_merged_mapping.jsonl'''
    ap = argparse.ArgumentParser()
    ap.add_argument("--in1", required=True, help="First input JSONL")
    ap.add_argument("--tag1", required=True, help="Suffix tag for first file (e.g., t)")
    ap.add_argument("--in2", required=True, help="Second input JSONL")
    ap.add_argument("--tag2", required=True, help="Suffix tag for second file (e.g., rf)")
    ap.add_argument("--in3", required=True, help="Third input JSONL")
    ap.add_argument("--tag3", required=True, help="Suffix tag for third file (e.g., rs)")
    ap.add_argument("--out", required=True, help="Output merged JSONL")
    ap.add_argument("--map_out", required=True, help="Output mapping JSONL (new_id -> origin)")
    ap.add_argument(
        "--on_collision",
        choices=["error", "skip", "overwrite"],
        default="error",
        help="What to do if new_id already exists (default: error).",
    )
    args = ap.parse_args()

    inputs = [
        (Path(args.in1), args.tag1),
        (Path(args.in2), args.tag2),
        (Path(args.in3), args.tag3),
    ]
    out_path = Path(args.out)
    map_path = Path(args.map_out)

    out_path.parent.mkdir(parents=True, exist_ok=True)
    map_path.parent.mkdir(parents=True, exist_ok=True)

    seen_new_ids = set()
    written = 0

    with out_path.open("w", encoding="utf-8") as out_f, map_path.open("w", encoding="utf-8") as map_f:
        for src_path, tag in inputs:
            if not src_path.exists():
                raise FileNotFoundError(str(src_path))
            if not tag:
                raise ValueError("Empty tag is not allowed.")

            for line_no, rec in iter_jsonl(src_path):
                if not isinstance(rec, dict):
                    raise ValueError(f"{src_path}:{line_no} is not a JSON object")

                old_id = rec.get("id", None)
                if old_id is None:
                    # fallback id based on line number if missing
                    old_id = line_no

                # normalize old_id to string, then append tag
                new_id = f"{str(old_id)}{tag}"

                if new_id in seen_new_ids:
                    if args.on_collision == "error":
                        raise ValueError(f"ID collision on {new_id} (source {src_path}:{line_no})")
                    elif args.on_collision == "skip":
                        continue
                    elif args.on_collision == "overwrite":
                        # allow duplicates in output? We'll overwrite "seen" notion only; but output is append-only.
                        # Practically: overwrite doesn't make much sense for JSONL append. We'll still write and log mapping.
                        pass

                seen_new_ids.add(new_id)

                # update record id
                rec["id"] = new_id

                out_f.write(json.dumps(rec, ensure_ascii=False) + "\n")

                map_rec = {
                    "new_id": new_id,
                    "old_id": str(old_id),
                    "source_file": str(src_path),
                    "source_tag": tag,
                    "source_line": line_no,
                }
                map_f.write(json.dumps(map_rec, ensure_ascii=False) + "\n")

                written += 1

    print(f"✅ Wrote {written} records to: {out_path}")
    print(f"🧭 Mapping written to: {map_path}")


if __name__ == "__main__":
    main()
