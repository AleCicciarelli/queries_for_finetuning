#!/usr/bin/env python3
import json
from transformers import AutoTokenizer

PATH = "dpo_dataset/split_dataset/train_clean.jsonl"
TOK = "meta-llama/Meta-Llama-3-8B-Instruct"

tokenizer = AutoTokenizer.from_pretrained(TOK, use_fast=True)
if tokenizer.pad_token is None:
    tokenizer.pad_token = tokenizer.eos_token

rows = []
with open(PATH, "r", encoding="utf-8") as f:
    for i, line in enumerate(f, 1):
        ex = json.loads(line)
        pid = str(ex.get("id", f"line{i}"))
        p = ex["prompt"]
        c = ex["chosen"]
        r = ex["rejected"]
        lp = len(tokenizer.encode(p, add_special_tokens=False))
        lc = len(tokenizer.encode(c, add_special_tokens=False))
        lr = len(tokenizer.encode(r, add_special_tokens=False))
        total = lp + max(lc, lr)
        rows.append((total, lp, lc, lr, pid))

rows.sort(reverse=True)

print("Top 20 by total_worst_case:")
for total, lp, lc, lr, pid in rows[:20]:
    print(f"{pid:>12}  total={total}  prompt={lp}  chosen={lc}  rejected={lr}")

# show extreme outliers
print("\nOutliers total >= 20000:")
for total, lp, lc, lr, pid in rows:
    if total < 20000:
        break
    print(f"{pid:>12}  total={total}  prompt={lp}  chosen={lc}  rejected={lr}")
