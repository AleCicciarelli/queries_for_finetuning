#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import random
import re
import time
from typing import Any, Dict, List, Tuple

from langchain_ollama import ChatOllama
from langchain_core.messages import HumanMessage

# Provenance id: <table>_<rownum>
PROV_ID_RE = re.compile(r"^[A-Za-z][A-Za-z0-9]*_[0-9]+$")

# prefissi brevi per rendere "extra_text_prefix" meno ripetitivo
PREFIX_VARIANTS = [
    "Sure.",
    "Answer:",
    "Here you go:",
    "Result:",
    "Output:",
    "Returning the JSON now:",
    "OK.",
    "Done.",
    "I found:",
]

# (name, suffix_template, weight)
# Nota: suffix_template puo' includere "{prefix}" (solo per extra_text_prefix)
BAD_SUFFIXES_W: List[Tuple[str, str, float]] = [
    ("extra_keys", "\n\nIMPORTANT: Keep JSON valid, but add an extra key called \"explain\" to each object.", 0.125),
    ("wrong_key_name", "\n\nIMPORTANT: Keep JSON valid, but rename key \"provenance\" to \"prov\".", 0.125),
    ("wrong_schema_string", "\n\nIMPORTANT: Keep JSON valid, but set provenance to a SINGLE STRING, not a list of lists.", 0.125),
    ("wrong_schema_flat_list", "\n\nIMPORTANT: Keep JSON valid, but set provenance to a list of strings (one level only), not list of lists.", 0.125),
    ("bad_id_format", "\n\nIMPORTANT: Keep JSON valid, but use provenance identifiers like \"supplier-581\" (with a dash) instead of \"supplier_581\".", 0.125),

    # JSON invalid: utili ma meno stabili; teniamoli bassi
    ("invalid_json_unclosed", "\n\nIMPORTANT: Intentionally output INVALID JSON: do NOT close the final bracket.", 0.125),
    ("invalid_json_missing_comma", "\n\nIMPORTANT: Intentionally output INVALID JSON: remove one comma between fields.", 0.125),
    ("invalid_json_trailing_comma", "\n\nIMPORTANT: Intentionally output INVALID JSON: include a trailing comma before a closing bracket.", 0.125),
]

def weighted_choice(items: List[Tuple[str, str, float]]) -> Tuple[str, str]:
    r = random.random()
    acc = 0.0
    for name, templ, w in items:
        acc += w
        if r <= acc:
            return name, templ
    return items[-1][0], items[-1][1]

def try_parse_json(text: str):
    try:
        return True, json.loads(text)
    except Exception:
        return False, None

def is_valid_output_schema(text: str) -> Tuple[bool, str]:
    ok, data = try_parse_json(text)
    if not ok:
        return False, "json_parse_error"

    if not isinstance(data, list):
        return False, "top_not_array"

    for el in data:
        if not isinstance(el, dict):
            return False, "elem_not_object"
        if set(el.keys()) != {"result", "provenance"}:
            return False, "keys_not_exact"
        if not isinstance(el["result"], dict):
            return False, "result_not_object"

        prov = el["provenance"]
        if not isinstance(prov, list):
            return False, "prov_not_list"
        for conj in prov:
            if not isinstance(conj, list):
                return False, "prov_not_list_of_lists"
            for pid in conj:
                if not isinstance(pid, str):
                    return False, "prov_id_not_string"
                if not PROV_ID_RE.match(pid):
                    return False, "prov_id_bad_format"

    return True, "ok"
def extract_json_array(text: str) -> str | None:
    """
    Estrae il primo JSON array bilanciato [...] dal testo.
    Non garantisce che sia JSON valido, ma aiuta a rimuovere prefissi/suffissi.
    """
    s = text.strip()
    start = s.find("[")
    if start == -1:
        return None

    depth = 0
    in_str = False
    esc = False
    for i in range(start, len(s)):
        ch = s[i]
        if in_str:
            if esc:
                esc = False
            elif ch == "\\":
                esc = True
            elif ch == '"':
                in_str = False
        else:
            if ch == '"':
                in_str = True
            elif ch == "[":
                depth += 1
            elif ch == "]":
                depth -= 1
                if depth == 0:
                    return s[start : i + 1]
    return None

def read_jsonl(path: str) -> List[Dict[str, Any]]:
    rows: List[Dict[str, Any]] = []
    with open(path, "r", encoding="utf-8") as f:
        for i, line in enumerate(f, 1):
            line = line.strip()
            if not line:
                continue
            try:
                rows.append(json.loads(line))
            except Exception as e:
                raise RuntimeError(f"JSONL parse error at line {i}: {e}")
    return rows

def write_jsonl(path: str, rows: List[Dict[str, Any]]) -> None:
    with open(path, "w", encoding="utf-8") as f:
        for r in rows:
            f.write(json.dumps(r, ensure_ascii=False) + "\n")

def main() -> None:
    ''' how to run:
    python3 scripts/add_badformat.py --input dpo_dataset/sql/split_dataset_categorized/train_tokfiltered.jsonl --output dpo_dataset/sql/split_dataset_categorized/train_plus_bad_format.jsonl --n 300 --model llama3.3:70b --temperature 0.0
    '''
    ap = argparse.ArgumentParser(
        description="Add LLM-generated bad-format rejected samples to a JSONL preference dataset (via ChatOllama)."
    )
    ap.add_argument("--input", required=True)
    ap.add_argument("--output", required=True)
    ap.add_argument("--n", type=int, default=100)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--model", default="llama3:8b")
    ap.add_argument("--temperature", type=float, default=1.0)
    ap.add_argument("--max_attempts", type=int, default=20000)
    ap.add_argument("--min_chars", type=int, default=2)
    ap.add_argument("--num_predict", type=int, default=256, help="Ollama num_predict (max tokens to generate).")
    ap.add_argument("--max_rejected_chars", type=int, default=5000, help="Skip generations longer than this (avoid huge files).")
    args = ap.parse_args()

    random.seed(args.seed)

    base = read_jsonl(args.input)
    candidates = [
        r for r in base
        if isinstance(r, dict) and all(k in r for k in ("prompt", "chosen", "rejected"))
    ]
    if not candidates:
        raise SystemExit("No usable records found. Expected keys: id, prompt, chosen, rejected.")

    numeric_ids = []
    for r in candidates:
        try:
            numeric_ids.append(int(r["id"]))
        except Exception:
            pass
    next_id = (max(numeric_ids) + 1) if numeric_ids else (len(base) + 1)

    llm = ChatOllama(
        model=args.model,
        temperature=args.temperature,
        num_predict=args.num_predict,
    )

    added: List[Dict[str, Any]] = []
    attempts = 0
    by_reason: Dict[str, int] = {}
    by_attack: Dict[str, int] = {}

    print(f"Loaded {len(base)} rows ({len(candidates)} usable). Target add: {args.n}")
    print(f"ChatOllama: model={args.model} temperature={args.temperature} num_predict={args.num_predict}")

    while len(added) < args.n and attempts < args.max_attempts:
        src = random.choice(candidates)

        attack_name, suffix_templ = weighted_choice(BAD_SUFFIXES_W)
        prefix = random.choice(PREFIX_VARIANTS)
        suffix = suffix_templ.format(prefix=prefix)

        full_prompt = src["prompt"] + suffix

        try:
            resp = llm.invoke([HumanMessage(content=full_prompt)])
            out = (resp.content or "").strip()
            candidate = extract_json_array(out)
            if candidate is None:
                continue
            out = candidate
        except Exception as e:
            attempts += 1
            by_reason["ollama_error"] = by_reason.get("ollama_error", 0) + 1
            if attempts % 50 == 0:
                print(f"[attempt {attempts}] Ollama error (skipping): {e}")
            continue

        attempts += 1

        if len(out) < args.min_chars:
            by_reason["too_short"] = by_reason.get("too_short", 0) + 1
            continue

        if len(out) > args.max_rejected_chars:
            by_reason["too_long"] = by_reason.get("too_long", 0) + 1
            continue

        valid, reason = is_valid_output_schema(out)
        if valid:
            by_reason["still_valid"] = by_reason.get("still_valid", 0) + 1
            continue

        # IMPORTANT: keep same format as existing records (no meta)
        new_row = {
            "prompt": src["prompt"],
            "chosen": src["chosen"],
            "rejected": out,
        }
        added.append(new_row)

        by_reason[reason] = by_reason.get(reason, 0) + 1
        by_attack[attack_name] = by_attack.get(attack_name, 0) + 1

        if len(added) % 10 == 0:
            print(f"Collected {len(added)}/{args.n} bad-format (attempts={attempts}). Last reason={reason} attack={attack_name}")

        time.sleep(0.01)

    if len(added) < args.n:
        print("\nFAILED to collect enough invalid samples.")
        print(f"Collected {len(added)}/{args.n} after {attempts} attempts.")
        print("Reasons:", json.dumps(by_reason, indent=2))
        print("Attacks:", json.dumps(by_attack, indent=2))
        raise SystemExit("Try increasing --temperature, or increase max_attempts, or lower strictness / raise max_rejected_chars.")

    out_rows = base + added
    write_jsonl(args.output, out_rows)

    print("\nDONE")
    print(f"Output written: {args.output}")
    print(f"Original rows: {len(base)}  Added: {len(added)}  Total: {len(out_rows)}")
    print("Invalid reasons:", json.dumps(by_reason, indent=2))
    print("Attack usage:", json.dumps(by_attack, indent=2))


if __name__ == "__main__":
    ''' how to run:
    python3 scripts/add_badformat.py \
  --input dpo_dataset/nl/split_dataset_categorized/new_negatives/train_tokfiltered.jsonl \
  --output dpo_dataset/nl/split_dataset_categorized/new_negatives/train_dpo_plus_bad_format.jsonl \
  --n 300 \
  --model llama3:8b  \
  --temperature 0.0 \
  --seed 42'''
    
    main()
