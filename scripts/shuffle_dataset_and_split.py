#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import random
from collections import defaultdict, Counter
from pathlib import Path
from typing import Any, Dict, List, Tuple

REQUIRED_KEYS = ("id", "prompt", "chosen", "rejected")

def read_and_clean_jsonl(path: Path) -> List[Dict[str, Any]]:
    rows = []
    if not path.exists():
        return []
    with path.open("r", encoding="utf-8") as f:
        for i, line in enumerate(f, start=1):
            line = line.strip()
            if not line:
                continue
            try:
                obj = json.loads(line)
                # Pulizia campi e salvataggio metadato categoria per lo split
                cleaned = {k: obj[k] for k in REQUIRED_KEYS}
                cleaned["_category"] = path.stem.replace("dpo_merged_", "")
                rows.append(cleaned)
            except (KeyError, json.JSONDecodeError) as e:
                print(f"⚠️ Errore in {path}:{i} -> {e}")
    return rows

def write_jsonl(path: Path, rows: List[Dict[str, Any]]):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        for r in rows:
            # Rimuoviamo il metadato interno prima di salvare
            out_obj = {k: v for k, v in r.items() if not k.startswith("_")}
            f.write(json.dumps(out_obj, ensure_ascii=False) + "\n")

def get_tag_from_id(id_value: Any) -> str:
    s = str(id_value)
    return s.rsplit("_", 1)[1] if "_" in s else "unknown"

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in_dir", required=True, help="Directory con i file dpo_merged_*.jsonl")
    ap.add_argument("--categories",nargs="*",default=None,help="Categories to process (default: all found)")
    ap.add_argument("--out_dir", required=True, help="Directory di output per gli split")
    ap.add_argument("--train_ratio", type=float, default=0.85)
    ap.add_argument("--val_ratio", type=float, default=0.10)
    ap.add_argument("--seed", type=int, default=42)
    args = ap.parse_args()

    rng = random.Random(args.seed)
    in_dir = Path(args.in_dir)
    out_dir = Path(args.out_dir)
    
    all_train, all_val, all_test = [], [], []

    cat_files = list(in_dir.glob("dpo_merged_*.jsonl"))

    if args.categories:
        wanted = set(args.categories)
        filtered = []
        for p in cat_files:
            cat = p.stem.replace("dpo_merged_", "")
            if cat in wanted:
                filtered.append(p)
        cat_files = filtered

    print(f"📂 Analisi di {len(cat_files)} file di categoria...")
    if args.categories:
        print(f"🎯 Categorie incluse: {sorted(set(args.categories))}")

    for cat_file in cat_files:
        rows = read_and_clean_jsonl(cat_file)
        if not rows: continue

        # Stratificazione per DB Tag all'interno della Categoria
        tag_groups = defaultdict(list)
        for r in rows:
            tag_groups[get_tag_from_id(r["id"])].append(r)

        for tag, items in tag_groups.items():
            rng.shuffle(items)
            n = len(items)
            n_train = int(round(n * args.train_ratio))
            n_val = int(round(n * args.val_ratio))

            if n >= 3 and (n_train + n_val) >= n:
                n_train, n_val = max(1, n - 2), 1

            all_train.extend(items[:n_train])
            all_val.extend(items[n_train:n_train + n_val])
            all_test.extend(items[n_train + n_val:])

    # Mescoliamo i set globali
    rng.shuffle(all_train)
    rng.shuffle(all_val)
    rng.shuffle(all_test)

    # 1. Scrittura file globali (per training e validazione)
    write_jsonl(out_dir / "train.jsonl", all_train)
    write_jsonl(out_dir / "val.jsonl", all_val)
    write_jsonl(out_dir / "test_full.jsonl", all_test)

    # 2. Scrittura Test Set categorizzati (per valutazione analitica)
    test_cat_dir = out_dir / "test_by_category"
    test_by_cat = defaultdict(list)
    for r in all_test:
        test_by_cat[r["_category"]].append(r)

    for cat_name, rows in test_by_cat.items():
        write_jsonl(test_cat_dir / f"test_{cat_name}.jsonl", rows)

    print(f"\n✅ Split completato in {args.out_dir}")
    print(f"📝 Creati train.jsonl, val.jsonl e {len(test_by_cat)} file di test specifici.")

    # Report finale
    print("\n--- DISTRIBUZIONE TEST SET PER CATEGORIA ---")
    for cat_name, rows in sorted(test_by_cat.items()):
        db_dist = dict(Counter(get_tag_from_id(r["id"]) for r in rows))
        print(f"📍 {cat_name:25} | Count: {len(rows):4} | DBs: {db_dist}")

if __name__ == "__main__":
    '''how to run:
    python3 scripts/shuffle_dataset_and_split.py \
      --in_dir dpo_dataset/nl/merged_categories/new_negatives \
      --out_dir dpo_dataset/nl/split_dataset_categorized/new_negatives \
      --train_ratio 0.85 \
      --val_ratio 0.10 \
      --seed 42'''
    main()