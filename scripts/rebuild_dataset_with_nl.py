#!/usr/bin/env python3
from __future__ import annotations
import json
from pathlib import Path
from typing import Any, Dict, List

INSTRUCTION = (
    "Answer the QUESTION using the provided CONTEXT_DATA.\n"
    "Return ONLY valid JSON and nothing else.\n"
    "The entire output MUST be a JSON array.\n\n"
    "Each array element MUST be an object with EXACTLY these keys:\n"
    "- result: an object representing one output tuple\n"
    "- provenance: a Why[X] provenance expression for that tuple\n\n"
    "Provenance rules:\n"
    "- Each provenance identifier MUST be a string formatted as \"<table_name>_<row_number>\" "
    "(e.g., \"standings_35\").\n"
    "- The provenance field MUST be a list of lists of provenance identifiers.\n"
    "- Each inner list contains the identifiers that together produce the result tuple.\n\n"
    "JSON schema:\n"
    "[{\"result\": {...}, \"provenance\": [[\"t1\", \"t2\"], [\"t3\"], ...]}, ...]\n\n"
    "Constraints:\n"
    "- Do NOT output SQL.\n"
    "- Do NOT output explanations, comments, markdown, or code fences.\n"
    "- Do NOT add extra keys.\n"
    "- If there are no results, return []."
)

def load_json_or_jsonl(path: Path) -> List[Dict[str, Any]]:
    text = path.read_text(encoding="utf-8").strip()
    if not text:
        return []
    if text[0] == "[":
        return json.loads(text)
    return [json.loads(line) for line in text.splitlines() if line.strip()]

def index_by_id(objs: List[Dict[str, Any]], key: str = "id") -> Dict[int, Dict[str, Any]]:
    out: Dict[int, Dict[str, Any]] = {}
    for o in objs:
        if key in o:
            out[int(o[key])] = o
    return out

def build_prompt_nl(question_nl: str, context_data: Dict[str, Any]) -> str:
    return (
        f"{INSTRUCTION}\n\n"
        f"QUESTION:\n{question_nl}\n\n"
        f"CONTEXT_DATA (rows):\n{json.dumps(context_data, ensure_ascii=False)}\n"
    )

def main():
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--in-dpo-jsonl", type=Path, required=True)
    ap.add_argument("--nl-file", type=Path, required=True)          # contiene [{"id":..., "nl":...}, ...]
    ap.add_argument("--context-jsonl", type=Path, required=True)    # contiene [{"id":..., "context_data": {...}}, ...]
    ap.add_argument("--out-dpo-jsonl", type=Path, required=True)
    args = ap.parse_args()

    nl_by_id = index_by_id(load_json_or_jsonl(args.nl_file), key="id")
    ctx_by_id = index_by_id(load_json_or_jsonl(args.context_jsonl), key="id")

    n_missing_nl = 0
    n_missing_ctx = 0
    n_total = 0

    with args.in_dpo_jsonl.open("r", encoding="utf-8") as fin, args.out_dpo_jsonl.open("w", encoding="utf-8") as fout:
        for line in fin:
            if not line.strip():
                continue
            obj = json.loads(line)
            n_total += 1

            qid = int(obj["id"])
            nl_obj = nl_by_id.get(qid)
            ctx_obj = ctx_by_id.get(qid)

            if nl_obj is None:
                n_missing_nl += 1
                # se vuoi: skip oppure mantieni prompt originale
                continue
            if ctx_obj is None:
                n_missing_ctx += 1
                continue

            question_nl = str(nl_obj["nl"])
            context_data = ctx_obj.get("context_data", {})

            # mantieni chosen/rejected identici; cambia SOLO prompt
            obj["prompt"] = build_prompt_nl(question_nl, context_data)

            fout.write(json.dumps(obj, ensure_ascii=False) + "\n")

    print(f"Done. total={n_total}, missing_nl={n_missing_nl}, missing_ctx={n_missing_ctx}")

if __name__ == "__main__":
    main()
