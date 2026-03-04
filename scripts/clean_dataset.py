#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any, List, Tuple

from transformers import AutoTokenizer

#DEFAULT_DROP_KEYS = [
#    "text", "body",
#    "c_comment", "o_comment", "p_comment", "ps_comment", "r_comment", "n_comment",
#]
DEFAULT_DROP_KEYS = [
    "provsql"
]
CONTEXT_MARK = "CONTEXT_DATA (rows):\n"


def drop_keys_in_obj(obj: Any, drop_keys: set[str]) -> Any:
    if isinstance(obj, dict):
        return {k: drop_keys_in_obj(v, drop_keys) for k, v in obj.items() if k not in drop_keys}
    if isinstance(obj, list):
        return [drop_keys_in_obj(x, drop_keys) for x in obj]
    return obj


def clean_prompt_context(prompt: str, drop_keys: set[str]) -> tuple[str, bool]:
    idx = prompt.find(CONTEXT_MARK)
    if idx == -1:
        return prompt, False

    prefix = prompt[: idx + len(CONTEXT_MARK)]
    ctx_str = prompt[idx + len(CONTEXT_MARK):].strip()

    try:
        ctx = json.loads(ctx_str)
    except Exception:
        # Can't parse; do nothing (better than breaking format)
        return prompt, False

    cleaned = drop_keys_in_obj(ctx, drop_keys)
    if cleaned == ctx:
        return prompt, False

    new_prompt = prefix + json.dumps(cleaned, ensure_ascii=False) + "\n"
    return new_prompt, True


def clean_answer_json(answer_str: str, drop_keys: set[str]) -> tuple[str, bool]:
    try:
        data = json.loads(answer_str)
    except Exception:
        return answer_str, False

    if not isinstance(data, list):
        return answer_str, False

    changed = False
    for item in data:
        if isinstance(item, dict) and "result" in item and isinstance(item["result"], dict):
            before = item["result"]
            after = {k: v for k, v in before.items() if k not in drop_keys}
            if after != before:
                item["result"] = after
                changed = True

    if not changed:
        return answer_str, False

    return json.dumps(data, ensure_ascii=False), True


def tok_len(tokenizer, text: Any) -> int:
    """Token length with Llama-3 tokenizer. Returns 0 if not a string."""
    if not isinstance(text, str) or not text:
        return 0
    return len(tokenizer.encode(text, add_special_tokens=False))


def maybe_track_top(lst: List[Tuple[str, int]], item: Tuple[str, int], k: int) -> None:
    lst.append(item)
    if len(lst) > 5 * k:
        lst.sort(key=lambda x: x[1], reverse=True)
        del lst[5 * k:]


def main():

    ap = argparse.ArgumentParser()
    ap.add_argument("--in_file", required=True)
    ap.add_argument("--out_file", required=True)

    ap.add_argument(
        "--model_id",
        default="meta-llama/Meta-Llama-3-8B-Instruct",
        help="HF model id used to load the tokenizer.",
    )

    ap.add_argument(
        "--drop_keys",
        default=",".join(DEFAULT_DROP_KEYS),
        help="Comma-separated keys to drop (e.g., text,body,comment)",
    )

    # Token-based filters
    ap.add_argument(
        "--max_prompt_tokens_keep",
        type=int,
        default=0,
        help="If >0, DROP examples whose prompt token length > this threshold.",
    )
    ap.add_argument(
        "--max_pair_tokens_keep",
        type=int,
        default=0,
        help="If >0, DROP examples where (prompt+chosen) or (prompt+rejected) > this threshold.",
    )

    ap.add_argument("--report_top_k", type=int, default=20)
    ap.add_argument(
    "--stats_out",
    type=str,
    default=None,
    help="Optional path to write dataset statistics as JSON.",
)

    args = ap.parse_args()

    tokenizer = AutoTokenizer.from_pretrained(args.model_id, use_fast=True)

    drop_keys = {k.strip() for k in args.drop_keys.split(",") if k.strip()}

    in_path = Path(args.in_file)
    out_path = Path(args.out_file)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    n_in = 0
    n_out = 0
    dropped_by_prompt = 0
    dropped_by_pair = 0

    changed_prompt = 0
    changed_chosen = 0
    changed_rejected = 0

    # Reports
    dropped_prompt: List[Tuple[str, int]] = []              # (id, prompt_tokens)
    dropped_pair: List[Tuple[str, int, int, int]] = []      # (id, worst_pair, p+c, p+r)

    largest_kept_prompt: List[Tuple[str, int]] = []         # (id, prompt_tokens)
    largest_kept_pair: List[Tuple[str, int]] = []           # (id, worst_pair_tokens)

    with in_path.open("r", encoding="utf-8") as fin, out_path.open("w", encoding="utf-8") as fout:
        for line_no, line in enumerate(fin, start=1):
            line = line.strip()
            if not line:
                continue

            n_in += 1
            ex = json.loads(line)
            pid = str(ex.get("id", f"line{line_no}"))

            if "prompt" not in ex or "chosen" not in ex or "rejected" not in ex:
                raise ValueError(f"Missing required keys at {pid}")

            # Token lengths
            p_tok = tok_len(tokenizer, ex["prompt"])
            c_tok = tok_len(tokenizer, ex["chosen"])
            r_tok = tok_len(tokenizer, ex["rejected"])

            MAX_PROMPT = args.max_prompt_tokens_keep
            MAX_PAIR = args.max_pair_tokens_keep

            # DROP by prompt
            if MAX_PROMPT and p_tok > MAX_PROMPT:
                dropped_by_prompt += 1
                dropped_prompt.append((pid, p_tok))
                continue

            # DROP by pair: both prompt+chosen and prompt+rejected must fit
            pc = p_tok + c_tok
            pr = p_tok + r_tok
            worst_pair = pc if pc >= pr else pr

            if MAX_PAIR and (pc > MAX_PAIR or pr > MAX_PAIR):
                dropped_by_pair += 1
                dropped_pair.append((pid, worst_pair, pc, pr))
                continue

            # cleaning (only for kept)
            new_prompt, ch_p = clean_prompt_context(ex["prompt"], drop_keys)
            if ch_p:
                ex["prompt"] = new_prompt
                changed_prompt += 1

            new_chosen, ch_c = clean_answer_json(ex["chosen"], drop_keys)
            if ch_c:
                ex["chosen"] = new_chosen
                changed_chosen += 1

            new_rej, ch_r = clean_answer_json(ex["rejected"], drop_keys)
            if ch_r:
                ex["rejected"] = new_rej
                changed_rejected += 1

            # Track largest kept
            maybe_track_top(largest_kept_prompt, (pid, p_tok), args.report_top_k)
            maybe_track_top(largest_kept_pair, (pid, worst_pair), args.report_top_k)

            fout.write(json.dumps(ex, ensure_ascii=False) + "\n")
            n_out += 1

    # sort reports
    dropped_prompt.sort(key=lambda x: x[1], reverse=True)
    dropped_pair.sort(key=lambda x: x[1], reverse=True)
    largest_kept_prompt.sort(key=lambda x: x[1], reverse=True)
    largest_kept_pair.sort(key=lambda x: x[1], reverse=True)
    stats = {
    "input_rows": n_in,
    "output_rows": n_out,
    "dropped_rows": dropped_by_prompt + dropped_by_pair,

    "filters": {
        "max_prompt_tokens_keep": args.max_prompt_tokens_keep,
        "max_pair_tokens_keep": args.max_pair_tokens_keep,
        "model_id": args.model_id,
    },

    "dropped_by_prompt": {
        "count": dropped_by_prompt,
        "top": [
            {"id": pid, "prompt_tokens": tok}
            for pid, tok in dropped_prompt[: args.report_top_k]
        ],
    },

    "dropped_by_pair": {
        "count": dropped_by_pair,
        "top": [
            {
                "id": pid,
                "worst_pair_tokens": worst,
                "prompt_plus_chosen": pc,
                "prompt_plus_rejected": pr,
            }
            for pid, worst, pc, pr in dropped_pair[: args.report_top_k]
        ],
    },

    "largest_kept": {
        "prompt_tokens": [
            {"id": pid, "prompt_tokens": tok}
            for pid, tok in largest_kept_prompt[: args.report_top_k]
        ],
        "pair_tokens": [
            {"id": pid, "worst_pair_tokens": tok}
            for pid, tok in largest_kept_pair[: args.report_top_k]
        ],
    },

    "cleaning": {
        "prompt_context_cleaned": changed_prompt,
        "chosen_result_cleaned": changed_chosen,
        "rejected_result_cleaned": changed_rejected,
    },
}
    if args.stats_out:
        stats_out_path = Path(args.stats_out)
        stats_out_path.parent.mkdir(parents=True, exist_ok=True)
        with stats_out_path.open("w", encoding="utf-8") as sf:
            json.dump(stats, sf, indent=4, ensure_ascii=False)
        print(f"✅ Wrote stats to {stats_out_path}")
    print(f"✅ Wrote {out_path}")
    print(f"Input rows:   {n_in}")
    print(f"Output rows:  {n_out}")
    print(f"Dropped rows: {dropped_by_prompt + dropped_by_pair}")

    if args.max_prompt_tokens_keep:
        print(f"\nFilter: max_prompt_tokens_keep={args.max_prompt_tokens_keep}")
        print(f"Dropped by prompt tokens: {dropped_by_prompt}")

    if args.max_pair_tokens_keep:
        print(f"\nFilter: max_pair_tokens_keep={args.max_pair_tokens_keep}")
        print(f"Dropped by pair tokens:   {dropped_by_pair}")

    print("\nCleaning stats (on kept rows only):")
    print(f"Prompt CONTEXT cleaned: {changed_prompt}")
    print(f"Chosen result cleaned:  {changed_chosen}")
    print(f"Rejected result cleaned:{changed_rejected}")

    if dropped_prompt:
        print(f"\n⚠️ Dropped by prompt tokens (top {args.report_top_k}):")
        for pid, sz in dropped_prompt[: args.report_top_k]:
            print(f"{pid}\tprompt_tokens={sz}")

    if dropped_pair:
        print(f"\n⚠️ Dropped by pair tokens (top {args.report_top_k}):")
        for pid, worst, pc, pr in dropped_pair[: args.report_top_k]:
            print(f"{pid}\tworst_pair={worst}\tp+c={pc}\tp+r={pr}")

    if largest_kept_prompt:
        print(f"\nℹ️ Largest kept prompts (top {args.report_top_k}):")
        for pid, sz in largest_kept_prompt[: args.report_top_k]:
            print(f"{pid}\tprompt_tokens={sz}")

    if largest_kept_pair:
        print(f"\nℹ️ Largest kept pairs (top {args.report_top_k}):")
        for pid, sz in largest_kept_pair[: args.report_top_k]:
            print(f"{pid}\tworst_pair_tokens={sz}")


if __name__ == "__main__":
    '''how to run:
    python scripts/clean_dataset.py  --in_file dpo_dataset/nl/split_dataset_categorized/new_negatives/test_by_category/test_1_easy_no_join.jsonl   --out_file dpo_dataset/nl/split_dataset_categorized/new_negatives/test_by_category/test_1_easy_no_join.jsonl     --model_id meta-llama/Meta-Llama-3-8B-Instruct   --max_prompt_tokens_keep 2048   --max_pair_tokens_keep 4096   --report_top_k 30'''
    main()
