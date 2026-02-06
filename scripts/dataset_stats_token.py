#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import math
import os
from pathlib import Path
from typing import Any, Dict, List, Tuple

import numpy as np
from transformers import AutoTokenizer


REQ = ("prompt", "chosen", "rejected")


def percentile(values: np.ndarray, p: float) -> float:
    if values.size == 0:
        return float("nan")
    return float(np.percentile(values, p))


def summarize_int(values: np.ndarray) -> Dict[str, float]:
    if values.size == 0:
        return {}
    return {
        "count": int(values.size),
        "min": int(values.min()),
        "mean": float(values.mean()),
        "median": float(np.median(values)),
        "p90": percentile(values, 90),
        "p95": percentile(values, 95),
        "p99": percentile(values, 99),
        "max": int(values.max()),
    }


def count_over(values: np.ndarray, thresholds: List[int]) -> Dict[str, float]:
    out = {}
    n = values.size
    if n == 0:
        return out
    for t in thresholds:
        out[f">={t}"] = float((values >= t).sum()) / float(n)
    return out


def utf8_bytes(s: str) -> int:
    return len(s.encode("utf-8"))


def main():
    '''how to run:
    python scripts/dataset_stats_token.py \
        --input dpo_dataset/split_dataset/train_clean.jsonl\
        --tokenizer meta-llama/Meta-Llama-3-8B-Instruct \
        --out_dir dpo_dataset/stats \
        --write_csv
    '''
    ap = argparse.ArgumentParser()
    ap.add_argument("--input", required=True, help="Path to JSONL dataset")
    ap.add_argument(
        "--tokenizer",
        required=True,
        help="HF tokenizer name/path (e.g., meta-llama/Meta-Llama-3-8B-Instruct)",
    )
    ap.add_argument("--out_dir", required=True, help="Output directory for stats.json (+ optional csv)")
    ap.add_argument("--write_csv", action="store_true", help="Write per-row lengths CSV (can be big)")
    ap.add_argument("--max_rows", type=int, default=-1, help="Optionally limit rows for quick check")
    ap.add_argument(
        "--thresholds",
        type=str,
        default="2048,3072,4096,6144,7168,8192",
        help="Comma-separated thresholds for proportions (tokens)",
    )
    args = ap.parse_args()

    in_path = Path(args.input)
    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    thresholds = [int(x.strip()) for x in args.thresholds.split(",") if x.strip()]

    file_size_bytes = in_path.stat().st_size

    tokenizer = AutoTokenizer.from_pretrained(args.tokenizer, use_fast=True)
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    ids: List[str] = []
    prompt_lens: List[int] = []
    chosen_lens: List[int] = []
    rejected_lens: List[int] = []
    total_lens: List[int] = []

    # bytes per field
    prompt_bytes: List[int] = []
    chosen_bytes: List[int] = []
    rejected_bytes: List[int] = []
    line_bytes: List[int] = []

    bad_rows: List[Dict[str, Any]] = []
    n = 0

    csv_lines: List[str] = []
    if args.write_csv:
        csv_lines.append("id,prompt_tokens,chosen_tokens,rejected_tokens,total_tokens,prompt_bytes,chosen_bytes,rejected_bytes,line_bytes")

    with in_path.open("r", encoding="utf-8") as f:
        for line_no, line in enumerate(f, start=1):
            if args.max_rows > 0 and n >= args.max_rows:
                break

            raw = line
            line = line.strip()
            if not line:
                continue

            try:
                ex = json.loads(line)
            except Exception as e:
                bad_rows.append({"line_no": line_no, "error": f"json_parse: {e}"})
                continue

            if not isinstance(ex, dict):
                bad_rows.append({"line_no": line_no, "error": "not_an_object"})
                continue

            missing = [k for k in REQ if k not in ex]
            if missing:
                bad_rows.append({"line_no": line_no, "error": f"missing_keys:{missing}"})
                continue

            if not all(isinstance(ex[k], str) for k in REQ):
                bad_rows.append({"line_no": line_no, "error": "non_string_field"})
                continue

            pid = str(ex.get("id", f"line{line_no}"))
            ptxt, ctxt, rtxt = ex["prompt"], ex["chosen"], ex["rejected"]

            # token counts (no special tokens: we care about raw length pressure)
            p_tok = len(tokenizer.encode(ptxt, add_special_tokens=False))
            c_tok = len(tokenizer.encode(ctxt, add_special_tokens=False))
            r_tok = len(tokenizer.encode(rtxt, add_special_tokens=False))

            ids.append(pid)
            prompt_lens.append(p_tok)
            chosen_lens.append(c_tok)
            rejected_lens.append(r_tok)
            total_lens.append(p_tok + max(c_tok, r_tok))  # rough "worst-case" per sample

            pb = utf8_bytes(ptxt)
            cb = utf8_bytes(ctxt)
            rb = utf8_bytes(rtxt)
            lb = len(raw.encode("utf-8"))  # full line bytes including JSON structure/newline

            prompt_bytes.append(pb)
            chosen_bytes.append(cb)
            rejected_bytes.append(rb)
            line_bytes.append(lb)

            if args.write_csv:
                csv_lines.append(
                    f"{pid},{p_tok},{c_tok},{r_tok},{p_tok + max(c_tok,r_tok)},{pb},{cb},{rb},{lb}"
                )

            n += 1

    # Convert to numpy
    P = np.array(prompt_lens, dtype=np.int32)
    C = np.array(chosen_lens, dtype=np.int32)
    R = np.array(rejected_lens, dtype=np.int32)
    T = np.array(total_lens, dtype=np.int32)

    PB = np.array(prompt_bytes, dtype=np.int64)
    CB = np.array(chosen_bytes, dtype=np.int64)
    RB = np.array(rejected_bytes, dtype=np.int64)
    LB = np.array(line_bytes, dtype=np.int64)

    stats = {
        "input_file": str(in_path),
        "file_size_bytes": int(file_size_bytes),
        "num_valid_rows": int(n),
        "num_invalid_rows": int(len(bad_rows)),
        "invalid_rows_sample": bad_rows[:20],  # keep small
        "tokenizer": {
            "name_or_path": args.tokenizer,
            "pad_token_id": int(tokenizer.pad_token_id) if tokenizer.pad_token_id is not None else None,
            "eos_token_id": int(tokenizer.eos_token_id) if tokenizer.eos_token_id is not None else None,
        },
        "tokens": {
            "prompt": summarize_int(P),
            "chosen": summarize_int(C),
            "rejected": summarize_int(R),
            "total_worst_case_per_sample": summarize_int(T),
            "prompt_over_threshold_ratio": count_over(P, thresholds),
            "total_worst_case_over_threshold_ratio": count_over(T, thresholds),
        },
        "bytes": {
            "prompt": {
                **summarize_int(PB.astype(np.int32) if PB.size < 2_000_000_000 else PB.astype(np.int64)),
                "sum": int(PB.sum()) if PB.size else 0,
            },
            "chosen": {
                **summarize_int(CB.astype(np.int32) if CB.size < 2_000_000_000 else CB.astype(np.int64)),
                "sum": int(CB.sum()) if CB.size else 0,
            },
            "rejected": {
                **summarize_int(RB.astype(np.int32) if RB.size < 2_000_000_000 else RB.astype(np.int64)),
                "sum": int(RB.sum()) if RB.size else 0,
            },
            "jsonl_line": {
                **summarize_int(LB.astype(np.int32) if LB.size < 2_000_000_000 else LB.astype(np.int64)),
                "sum": int(LB.sum()) if LB.size else 0,
            },
        },
        "recommended": {
            "max_length_choice_hint": (
                "If p95(prompt) <= 3072 and p99(total_worst_case) <= 4096, start with max_length=4096. "
                "If p99(prompt) > 4096, consider max_length=8192 but reduce per_device_train_batch_size and enable gradient_checkpointing."
            )
        },
    }

    # Save stats.json
    stats_path = out_dir / "stats.json"
    stats_path.write_text(json.dumps(stats, indent=2, ensure_ascii=False), encoding="utf-8")

    # Save lengths.csv (optional)
    if args.write_csv:
        csv_path = out_dir / "lengths.csv"
        csv_path.write_text("\n".join(csv_lines) + "\n", encoding="utf-8")

    print(f"✅ Done. Wrote {stats_path}")
    if args.write_csv:
        print(f"✅ Wrote {csv_path}")
    print(f"Valid rows: {n} | Invalid rows: {len(bad_rows)} | File size: {file_size_bytes/1024/1024:.2f} MiB")


if __name__ == "__main__":
    main()
