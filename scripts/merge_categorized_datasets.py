#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any, Dict, Iterable, Tuple, List

def iter_jsonl(path: Path) -> Iterable[Tuple[int, Dict[str, Any]]]:
    if not path.exists():
        return # Salta se il file di una specifica categoria non esiste
    with path.open("r", encoding="utf-8") as f:
        for i, line in enumerate(f, start=1):
            line = line.strip()
            if not line:
                continue
            yield i, json.loads(line)

def main() -> None:
    ap = argparse.ArgumentParser()
    # Cartelle base per i 3 DB
    ap.add_argument("--dir1", required=True, help="Directory for DB 1 (e.g., dpo_dataset/relf1)")
    ap.add_argument("--tag1", required=True, help="Tag for DB 1 (e.g., _rf)")
    ap.add_argument("--dir2", required=True, help="Directory for DB 2 (e.g., dpo_dataset/tpch)")
    ap.add_argument("--tag2", required=True, help="Tag for DB 2 (e.g., _t)")
    ap.add_argument("--dir3", required=True, help="Directory for DB 3 (e.g., dpo_dataset/relstack)")
    ap.add_argument("--tag3", required=True, help="Tag for DB 3 (e.g., _rs)")
    
    ap.add_argument("--out_dir", required=True, help="Output directory for merged categories")
    ap.add_argument("--map_out", required=True, help="Output mapping JSONL")
    
    args = ap.parse_args()

    # Definiamo le categorie basandoci sui suffissi dei tuoi file
    categories = [
        "1_easy_no_join",
        "2_medium_join",
        "3_has_aggr",
        "4_has_union",
        "5_has_all"
    ]

    db_configs = [
        (Path(args.dir1), args.tag1),
        (Path(args.dir2), args.tag2),
        (Path(args.dir3), args.tag3),
    ]

    out_base = Path(args.out_dir)
    out_base.mkdir(parents=True, exist_ok=True)
    map_path = Path(args.map_out)
    map_path.parent.mkdir(parents=True, exist_ok=True)

    seen_new_ids = set()
    total_written = 0

    with map_path.open("w", encoding="utf-8") as map_f:
        for cat in categories:
            cat_written = 0
            out_file_path = out_base / f"dpo_merged_{cat}.jsonl"
            
            with out_file_path.open("w", encoding="utf-8") as out_f:
                for db_dir, tag in db_configs:
                    # Cerchiamo il file della categoria nella cartella del DB
                    # Gestisce sia nomi come 'dpo_1_easy_no_join.jsonl' che 'dpo_merged_...'
                    src_path = db_dir / f"dpo_{cat}.jsonl"
                    
                    if not src_path.exists():
                        print(f"⚠️ Warning: {src_path} non trovato, salto.")
                        continue

                    for line_no, rec in iter_jsonl(src_path):
                        old_id = rec.get("id", line_no)
                        new_id = f"{str(old_id)}{tag}"

                        if new_id in seen_new_ids:
                            print(f"❌ Collisione ID: {new_id} in {src_path}. Salto.")
                            continue

                        seen_new_ids.add(new_id)
                        rec["id"] = new_id

                        out_f.write(json.dumps(rec, ensure_ascii=False) + "\n")

                        # Scrittura mapping
                        map_rec = {
                            "new_id": new_id,
                            "category": cat,
                            "source_db": db_dir.name,
                            "source_file": src_path.name
                        }
                        map_f.write(json.dumps(map_rec, ensure_ascii=False) + "\n")
                        
                        cat_written += 1
                        total_written += 1
            
            print(f"✅ Categoria '{cat}': uniti {cat_written} record in {out_file_path.name}")

    print(f"\n🚀 Merge completato! Totale record: {total_written}")
    print(f"🧭 Mapping salvato in: {map_path}")

if __name__ == "__main__":
    '''how to run:
    python3 scripts/merge_categorized_datasets.py \
    --dir1 dpo_dataset/relf1/sql_split/new_negatives \
    --tag1 _rf \
    --dir2 dpo_dataset/tpch/sql_split/new_negatives \
    --tag2 _t \
    --dir3 dpo_dataset/relstack/sql_split/new_negatives \
    --tag3 _rs \
    --out_dir dpo_dataset/sql/merged_categories/new_negatives/ \
    --map_out dpo_dataset/sql/new_negatives/merged_mapping.jsonl'''
    main()