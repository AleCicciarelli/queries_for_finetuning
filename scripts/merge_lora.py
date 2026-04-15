#!/usr/bin/env python3
from __future__ import annotations

import argparse
import os
import shutil
from pathlib import Path

import torch
from transformers import AutoModelForCausalLM, AutoTokenizer
from peft import PeftModel


def parse_args():
    p = argparse.ArgumentParser()
    p.add_argument("--base_model", type=str, required=True)
    p.add_argument("--adapter_path", type=str, required=True)
    p.add_argument("--output_dir", type=str, required=True)
    p.add_argument("--attn_implementation", type=str, default="eager")
    return p.parse_args()


def copy_custom_phi_files(base_model_path: str, output_dir: str):
    needed_files = [
        "configuration_phi3.py",
        "modeling_phi3.py",
    ]

    base_path = Path(base_model_path)
    out_path = Path(output_dir)

    # Caso 1: il base model è una directory locale
    if base_path.exists() and base_path.is_dir():
        for fname in needed_files:
            src = base_path / fname
            dst = out_path / fname
            if src.exists():
                shutil.copy2(src, dst)
                print(f"Copied {src} -> {dst}")
            else:
                print(f"Warning: {src} not found")

    else:
        # Caso 2: repo HF o modello in cache transformers
        # Scarica/risolvi i file nella cache e poi copiali
        from transformers.utils.hub import cached_file

        for fname in needed_files:
            try:
                resolved = cached_file(
                    base_model_path,
                    fname,
                    trust_remote_code=True,
                )
                if resolved is None:
                    print(f"Warning: could not resolve {fname} from {base_model_path}")
                    continue
                dst = out_path / fname
                shutil.copy2(resolved, dst)
                print(f"Copied {resolved} -> {dst}")
            except Exception as e:
                print(f"Warning: failed to fetch {fname}: {e}")


def main():
    '''
     python3 scripts/merge_lora.py \
  --base_model microsoft/Phi-3.5-mini-instruct \
  --adapter_path models/phi3.5/sql/phi_sft_lora_chat_template_sql_ep1 \
  --output_dir models/phi3.5/sql/merged/phi_sft_sql_ep1 \
  --attn_implementation eager
    '''
    
    args = parse_args()
    os.makedirs(args.output_dir, exist_ok=True)

    print(f"Loading base model: {args.base_model}")
    base_model = AutoModelForCausalLM.from_pretrained(
        args.base_model,
        torch_dtype=torch.bfloat16,
        trust_remote_code=True,
        attn_implementation=args.attn_implementation,
    )

    print(f"Loading adapter: {args.adapter_path}")
    model = PeftModel.from_pretrained(base_model, args.adapter_path)

    print("Merging adapter into base model...")
    model = model.merge_and_unload()

    print(f"Saving merged model to: {args.output_dir}")
    model.save_pretrained(args.output_dir)

    tokenizer = AutoTokenizer.from_pretrained(
        args.base_model,
        trust_remote_code=True,
        use_fast=True,
    )
    tokenizer.save_pretrained(args.output_dir)

    print("Copying Phi custom code files...")
    copy_custom_phi_files(args.base_model, args.output_dir)

    print("✅ Merge completed.")


if __name__ == "__main__":
    main()