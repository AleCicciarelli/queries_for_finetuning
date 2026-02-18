#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any, Dict, List, Tuple, Optional

import torch
from transformers import AutoModelForCausalLM, AutoTokenizer
from peft import PeftModel
from tqdm import tqdm

# -----------------------
# IO helpers
# -----------------------

def load_items(path: Path) -> List[Dict[str, Any]]:
    if path.suffix.lower() == ".jsonl":
        with open(path, 'r', encoding='utf-8') as f:
            return [json.loads(line) for line in f if line.strip()]
    return json.loads(path.read_text(encoding="utf-8"))

def extract_question_from_prompt(prompt: str) -> str:
    match = re.search(r"QUESTION:\n(.*?)(?=\n\nCONTEXT_DATA|$)", prompt, re.DOTALL)
    if match:
        return match.group(1).strip()
    return "N/A"

# -----------------------
# Parsing & Normalization
# -----------------------

def strict_json_parse(text: str) -> Tuple[Optional[Any], Optional[str]]:
    clean_text = re.sub(r'```json\s*|\s*```', '', text).strip()
    match = re.search(r'(\[.*\])', clean_text, re.DOTALL)
    if not match:
        return None, "No JSON array found"

    json_str = match.group()

    def _strip_provsql(obj: Any) -> Any:
        # Ci aspettiamo una lista di elementi {result, provenance}
        if isinstance(obj, list):
            for el in obj:
                if isinstance(el, dict):
                    res = el.get("result")
                    if isinstance(res, dict):
                        res.pop("provsql", None)
        return obj

    try:
        return _strip_provsql(json.loads(json_str)), None
    except json.JSONDecodeError:
        if json_str.count('[') > json_str.count(']'):
            json_str += ']' * (json_str.count('[') - json_str.count(']'))
        try:
            return _strip_provsql(json.loads(json_str)), None
        except Exception as e:
            return None, str(e)

def normalize_value(v) -> str:
    if v is None: return ""
    v_str = str(v).strip()
    if v_str.lower() in {"none", "null", "nan"}: return ""
    if v_str.endswith(".0"): v_str = v_str[:-2]
    # 3. Normalizzazione Date SICURA:
    # Applichiamo il replace solo se la stringa segue il pattern di una data ISO
    # Esempio: "2010-11-18T05:17" -> la T è preceduta e seguita da numeri
    if re.match(r'\d{4}-\d{2}-\d{2}T\d{2}', v_str):
        v_str = v_str.replace("T", " ")
    
    # 4. Pulizia millisecondi extra (es. .883000 -> .883)
    # Se dopo il replace abbiamo una data lunga, la tronchiamo ai secondi
    if len(v_str) > 19 and re.match(r'\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}', v_str):
        v_str = v_str[:19]
    return v_str

def canonicalize_result(item: Dict) -> str:
    res_raw = item.get("result", {})

    # Se per qualche motivo "result" è una stringa JSON, parse
    if isinstance(res_raw, str):
        try:
            res_raw = json.loads(res_raw)
        except json.JSONDecodeError:
            res_raw = {"value": res_raw}

    # Se "result" non è un dict (es. list/scalar), rendilo dict per canonicalizzare
    if not isinstance(res_raw, dict):
        res_raw = {"value": res_raw}

    res_norm = {str(k).strip(): normalize_value(v) for k, v in res_raw.items()}
    return json.dumps(res_norm, sort_keys=True)


def canonicalize_provenance(item: Dict) -> frozenset:
    prov_raw = item.get("provenance", [])
    return frozenset(
        frozenset(str(id_).strip().lower() for id_ in term) 
        for term in prov_raw if isinstance(term, list)
    )
# -----------------------
# Dataset Extraction
# -----------------------
def get_dataset_from_id(item_id: str, id2dataset: Optional[Dict[str, str]] = None) -> str:
    if not item_id:
        return "unknown"
    prefix = item_id.split("_", 1)[-1].lower()
    return {"t": "tpch", "rs": "relstack", "rf": "relf1"}.get(prefix, "unknown")

# -----------------------
# Metrics Logic
# -----------------------

def calculate_f1(tp, fp, fn):
    prec = tp / (tp + fp) if (tp + fp) > 0 else 0
    rec = tp / (tp + fn) if (tp + fn) > 0 else 0
    f1 = (2 * prec * rec) / (prec + rec) if (prec + rec) > 0 else 0
    return {"f1": f1, "precision": prec, "recall": rec}

def get_stats(gold_list, pred_list, mode="both"):
    if mode == "result":
        gold_set = {canonicalize_result(g) for g in gold_list}
        pred_set = {canonicalize_result(p) for p in pred_list}
    elif mode == "prov":
        gold_set = {canonicalize_provenance(g) for g in gold_list}
        pred_set = {canonicalize_provenance(p) for p in pred_list}
    else: # both
        gold_set = {(canonicalize_result(g), canonicalize_provenance(g)) for g in gold_list}
        pred_set = {(canonicalize_result(p), canonicalize_provenance(p)) for p in pred_list}
    
    tp_items = gold_set & pred_set
    fp_items = pred_set - gold_set
    fn_items = gold_set - pred_set
    return len(tp_items), len(fp_items), len(fn_items), fp_items, fn_items

def make_serializable_set(diff_set, mode):
    out = []
    for item in diff_set:
        if mode == "both":
            res_str, prov_frozenset = item
            out.append({"result": json.loads(res_str), "provenance": [list(t) for t in prov_frozenset]})
        elif mode == "result":
            out.append({"result": json.loads(item)})
        else: # prov
            out.append({"provenance": [list(t) for t in item]})
    return out

# -----------------------
# Model & Inference
# -----------------------

def load_model(base_id: str, adapter_dir: Optional[str]):
    tok = AutoTokenizer.from_pretrained(adapter_dir if adapter_dir else base_id)
    model = AutoModelForCausalLM.from_pretrained(base_id, torch_dtype=torch.bfloat16, device_map="auto",attn_implementation="sdpa")
    if adapter_dir:
        model = PeftModel.from_pretrained(model, adapter_dir)
    return model.eval(), tok 

def generate(model, tok, prompt: str, max_tokens: int) -> str:
    if "<|start_header_id|>" in prompt:
        inputs_text = prompt if "assistant" in prompt else prompt + "<|start_header_id|>assistant<|end_header_id|>\n\n"
    else:
        messages = [{"role": "user", "content": prompt}]
        inputs_text = tok.apply_chat_template(messages, tokenize=False, add_generation_prompt=True)

    inputs = tok(inputs_text, return_tensors="pt").to(model.device)
    terminators = [tok.eos_token_id, tok.convert_tokens_to_ids("<|eot_id|>")]

    with torch.no_grad():
        out = model.generate(
            **inputs, 
            max_new_tokens=max_tokens, 
            do_sample=False, 
            eos_token_id=terminators,
            pad_token_id=tok.eos_token_id,
            temperature=0.0
        )
    return tok.decode(out[0, inputs["input_ids"].shape[1]:], skip_special_tokens=True).strip()

# -----------------------
# Main Runner
# -----------------------

def run_evaluation_on_file(model, tok, file_path: Path, args) -> Dict[str, Any]:
    items = load_items(file_path)
    n = min(args.n, len(items))
    
    total_stats = {m: {"tp": 0, "fp": 0, "fn": 0} for m in ["both", "result", "prov"]}
    exact_match_count = 0
    detailed_errors = [] # Raccoglie i fallimenti
    dataset_stats = {}
    def _init_ds():
        return {
            "count": 0,
            "exact": 0,
            "parsing_failed": 0,
            "raw_counts": {m: {"tp": 0, "fp": 0, "fn": 0} for m in ["both", "result", "prov"]},
        }
    print(f"Processing {file_path.name} ({n} items)...")
    for idx in tqdm(range(n), leave=False):       
        item = items[idx]
        item_id = item.get("id")
        ds = get_dataset_from_id(item_id)
        dataset_stats.setdefault(ds, _init_ds())
        dataset_stats[ds]["count"] += 1

        prompt = item.get("prompt", "")
        gold_raw = item.get("chosen", "[]")
        
        pred_raw = generate(model, tok, prompt, args.max_new_tokens)
        pred_obj, parse_err = strict_json_parse(pred_raw)
        gold_obj, _ = strict_json_parse(gold_raw)
        
        if pred_obj is not None:
            # Calcoliamo le statistiche 'both' una volta sola per decidere se è un errore
            tp, fp, fn, fp_set, fn_set = get_stats(gold_obj, pred_obj, mode="both")
            
            # Aggiorniamo le statistiche globali per ogni modalità
            for mode in ["both", "result", "prov"]:
                m_tp, m_fp, m_fn, _, _ = get_stats(gold_obj, pred_obj, mode)
                total_stats[mode]["tp"] += m_tp
                total_stats[mode]["fp"] += m_fp
                total_stats[mode]["fn"] += m_fn

                dataset_stats[ds]["raw_counts"][mode]["tp"] += m_tp
                dataset_stats[ds]["raw_counts"][mode]["fp"] += m_fp
                dataset_stats[ds]["raw_counts"][mode]["fn"] += m_fn

            # Se non è un match perfetto, salviamo il dettaglio dell'errore
            if fp > 0 or fn > 0:
                detailed_errors.append({
                    "id": item.get("id"),
                    "question": extract_question_from_prompt(prompt),
                    "error_type": "hallucination" if fp > 0 and fn == 0 else "omission" if fn > 0 and fp == 0 else "mixed",
                    "hallucinated": make_serializable_set(fp_set, "both"),
                    "missing": make_serializable_set(fn_set, "both"),
                    "full_prediction": pred_raw # Opzionale: utile per debug
                })
            else:
                exact_match_count += 1
                dataset_stats[ds]["exact"] += 1
        else:
            # Caso in cui il JSON non è parsabile
        
            dataset_stats[ds]["parsing_failed"] += 1

            pred_obj = []  # consider it an empty prediction

            for mode in ["both", "result", "prov"]:
                m_tp, m_fp, m_fn, _, _ = get_stats(gold_obj, pred_obj, mode)

                total_stats[mode]["tp"] += m_tp
                total_stats[mode]["fp"] += m_fp
                total_stats[mode]["fn"] += m_fn

                dataset_stats[ds]["raw_counts"][mode]["tp"] += m_tp
                dataset_stats[ds]["raw_counts"][mode]["fp"] += m_fp
                dataset_stats[ds]["raw_counts"][mode]["fn"] += m_fn

            detailed_errors.append({
                "id": item.get("id"),
                "status": "parsing_failed",
                "error": parse_err,
                "raw_output": pred_raw
            })
    by_dataset = {}
    for ds, st in dataset_stats.items():
        by_dataset[ds] = {
            "count": st["count"],
            "parsing_failed": st["parsing_failed"],
            "metrics": {
                "overall_both": calculate_f1(**st["raw_counts"]["both"]),
                "only_result": calculate_f1(**st["raw_counts"]["result"]),
                "only_provenance": calculate_f1(**st["raw_counts"]["prov"]),
                "exact_match_ratio": st["exact"] / st["count"] if st["count"] else 0,
            },
            "raw_counts": st["raw_counts"],
        }
    return {
        "category": file_path.stem.replace("test_", ""),
        "count": n,
        "metrics": {
            "overall_both": calculate_f1(**total_stats["both"]),
            "only_result": calculate_f1(**total_stats["result"]),
            "only_provenance": calculate_f1(**total_stats["prov"]),
            "exact_match_ratio": exact_match_count / n if n > 0 else 0
        },
        "errors": detailed_errors, 
        "by_dataset": by_dataset,
        "raw_counts": total_stats
    }

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--base_id", default="meta-llama/Meta-Llama-3-8B-Instruct")
    parser.add_argument("--test_dir", required=True, help="Path a test json")
    parser.add_argument("--adapter_dir", default=None)
    parser.add_argument("--out_json", required=True)
    parser.add_argument("--n", type=int, default=100, help="Items per categoria")
    parser.add_argument("--max_new_tokens", type=int, default=1024)
    args = parser.parse_args()

    # 1. Caricamento Modello (una sola volta)
    print("🧠 Loading model...")
    model, tok = load_model(args.base_id, args.adapter_dir)

    # 2. Identificazione file di categoria
    test_dir = Path(args.test_dir)
    category_files = sorted(list(test_dir.glob("test_*.jsonl")))
    
    if not category_files:
        print(f"❌ Nessun file trovato in {test_dir}")
        return

    # 3. Loop sulle categorie
    all_category_results = []
    global_stats = {m: {"tp": 0, "fp": 0, "fn": 0} for m in ["both", "result", "prov"]}
    global_exact_matches = 0
    global_total_n = 0

    for cat_file in category_files:
        res = run_evaluation_on_file(model, tok, cat_file, args)
        all_category_results.append(res)
        
        # Aggregazione globale
        global_total_n += res["count"]
        for m in ["both", "result", "prov"]:
            global_stats[m]["tp"] += res["raw_counts"][m]["tp"]
            global_stats[m]["fp"] += res["raw_counts"][m]["fp"]
            global_stats[m]["fn"] += res["raw_counts"][m]["fn"]
        global_exact_matches += int(res["metrics"]["exact_match_ratio"] * res["count"])
        torch.cuda.empty_cache()
    # 4. Report Finale
    final_report = {
        "global_summary": {
            "overall_both": calculate_f1(**global_stats["both"]),
            "only_result": calculate_f1(**global_stats["result"]),
            "only_provenance": calculate_f1(**global_stats["prov"]),
            "exact_match_ratio": global_exact_matches / global_total_n if global_total_n > 0 else 0
        },
        "by_category": all_category_results
    }

    # Salvataggio
    mkdir_path = Path(args.out_json).parent
    mkdir_path.mkdir(parents=True, exist_ok=True)
    with open(args.out_json, "w", encoding="utf-8") as f:
        json.dump(final_report, f, indent=2, ensure_ascii=False)

    # Print a video veloce
    print("\n" + "="*50)
    print(f"🏆 GLOBAL RESULTS (F1 Both): {final_report['global_summary']['overall_both']['f1']:.3f}")
    print("="*50)
    for cat in all_category_results:
        cat_name = cat["category"]
        f1 = cat["metrics"]["overall_both"]["f1"]
        em = cat["metrics"]["exact_match_ratio"]

        parts = [
            f"📁 {cat_name:25}",
            f"F1={f1:.3f}",
            f"EM={em:.2%}",
        ]

        # breakdown per dataset
        by_ds = cat.get("by_dataset", {})
        total_pf = 0
        for ds in sorted(by_ds.keys()):
            ds_f1 = by_ds[ds]["metrics"]["overall_both"]["f1"]
            pf = by_ds[ds].get("parsing_failed", 0)
            total_pf += pf
            parts.append(f"{ds} F1={ds_f1:.3f}")

        if total_pf > 0:
            parts.append(f"PF={total_pf}")

        print(" | ".join(parts))

if __name__ == "__main__":
    '''how to run:
    python3 scripts/test_with_metrics.py \
  --test_dir dpo_dataset/sql/split_dataset_categorized/new_negatives/test_by_category/ \
  --out_json models/base/sql/reports_ds/evaluation_per_type.json \
  --n 200'''
    main()