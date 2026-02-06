#!/usr/bin/env python3
import json
import argparse
from typing import Any, Tuple


DEFAULT_DROP_KEYS = {"provsql"}
CONTEXT_MARK = "CONTEXT_DATA (rows):\n"


def drop_keys_in_obj(obj: Any, drop_keys: set[str]) -> Any:
    if isinstance(obj, dict):
        return {k: drop_keys_in_obj(v, drop_keys) for k, v in obj.items() if k not in drop_keys}
    if isinstance(obj, list):
        return [drop_keys_in_obj(x, drop_keys) for x in obj]
    return obj


def clean_prompt_context(prompt: str, drop_keys: set[str]) -> Tuple[str, bool]:
    idx = prompt.find(CONTEXT_MARK)
    if idx == -1:
        return prompt, False

    prefix = prompt[: idx + len(CONTEXT_MARK)]
    ctx_str = prompt[idx + len(CONTEXT_MARK):].strip()

    try:
        ctx = json.loads(ctx_str)
    except Exception:
        return prompt, False

    cleaned = drop_keys_in_obj(ctx, drop_keys)
    if cleaned == ctx:
        return prompt, False

    new_prompt = prefix + json.dumps(cleaned, ensure_ascii=False) + "\n"
    return new_prompt, True


def clean_answer_json(answer_str: str, drop_keys: set[str]) -> Tuple[str, bool]:
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


def clean(
    inp: str,
    out: str,
    drop_bad: bool = True,
    remove_id: bool = False,
    drop_keys: set[str] | None = None,
    drop_equal_pairs: bool = True,
) -> None:
    drop_keys = drop_keys or set()

    n_in = n_ok = n_bad = 0
    n_changed_obj = 0
    n_changed_prompt = 0
    n_changed_chosen = 0
    n_changed_rejected = 0
    n_dropped_equal_pairs = 0

    with open(inp, "r", encoding="utf-8") as fin, open(out, "w", encoding="utf-8") as fout:
        for i, line in enumerate(fin, start=1):
            line = line.strip()
            if not line:
                continue
            n_in += 1

            try:
                obj = json.loads(line)

                # 1) ID cleanup
                if remove_id:
                    obj.pop("id", None)
                else:
                    if "id" in obj and obj["id"] is not None:
                        obj["id"] = str(obj["id"])

                # 2) Drop keys everywhere in the top-level object (safe default)
                # If you want to ONLY clean chosen/rejected + prompt context, remove this block.
                if drop_keys:
                    cleaned_obj = drop_keys_in_obj(obj, drop_keys)
                    if cleaned_obj != obj:
                        obj = cleaned_obj
                        n_changed_obj += 1

                # 3) Prompt context cleanup (if parseable JSON after CONTEXT_MARK)
                if drop_keys and isinstance(obj.get("prompt"), str):
                    new_prompt, changed = clean_prompt_context(obj["prompt"], drop_keys)
                    if changed:
                        obj["prompt"] = new_prompt
                        n_changed_prompt += 1

                # 4) chosen/rejected cleanup (if they are JSON strings)
                if drop_keys:
                    for field in ("chosen", "rejected"):
                        val = obj.get(field)
                        if isinstance(val, str):
                            new_val, changed = clean_answer_json(val, drop_keys)
                            if changed:
                                obj[field] = new_val
                                if field == "chosen":
                                    n_changed_chosen += 1
                                else:
                                    n_changed_rejected += 1

                # 5) Drop DPO degenerate pairs: chosen == rejected (after cleaning)
                if drop_equal_pairs:
                    ch = obj.get("chosen")
                    rj = obj.get("rejected")
                    if isinstance(ch, str) and isinstance(rj, str) and ch == rj:
                        n_dropped_equal_pairs += 1
                        continue

                fout.write(json.dumps(obj, ensure_ascii=False) + "\n")
                n_ok += 1

            except Exception as e:
                n_bad += 1
                if not drop_bad:
                    raise RuntimeError(f"Bad JSON at line {i}: {e}\nLINE: {line[:200]}")

    print(f"Read={n_in} Written={n_ok} DroppedBadJSON={n_bad} DroppedEqualPairs={n_dropped_equal_pairs}")
    if drop_keys:
        print(
            "Changed:"
            f" obj={n_changed_obj}"
            f" prompt_ctx={n_changed_prompt}"
            f" chosen={n_changed_chosen}"
            f" rejected={n_changed_rejected}"
        )


if __name__ == "__main__":
    '''how to run:
    python3 scripts/clean_id_from_dataset.py \
  --in  dpo_dataset/sql/split_dataset_categorized/new_negatives/train_dpo_plus_bad_format.jsonl \
  --out dpo_dataset/sql/split_dataset_categorized/new_negatives/train_dpo_final.jsonl \
  --remove_id'''
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", required=True)
    ap.add_argument("--out", dest="out", required=True)
    ap.add_argument("--keep_bad", action="store_true", help="fail instead of dropping bad lines")
    ap.add_argument("--remove_id", action="store_true", help="remove id column entirely")

    ap.add_argument("--drop_keys", default="provsql", help="comma-separated keys to remove (default: provsql)")

    ap.add_argument(
        "--no_drop_equal_pairs",
        action="store_true",
        help="do NOT drop lines where chosen==rejected (default: drop them)",
    )

    args = ap.parse_args()

    drop_keys = {k.strip() for k in args.drop_keys.split(",") if k.strip()} if args.drop_keys else set()

    clean(
        args.inp,
        args.out,
        drop_bad=not args.keep_bad,
        remove_id=args.remove_id,
        drop_keys=drop_keys,
        drop_equal_pairs=not args.no_drop_equal_pairs,
    )


