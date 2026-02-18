#!/usr/bin/env python3
"""
Stable DPO fine-tuning (LoRA) for Meta-Llama-3-8B-Instruct.

Assumptions:
-  dataset is JSONL/JSON with fields:
  - prompt: str
  - chosen: str
  - rejected: str
  - id: optional (ignored)


Stability choices (recommended for H100 96GB):
- bf16 (no fp16)
- NO 4-bit / 8-bit quantization
- defaults: beta=0.1, lr=2e-6, LoRA r=16 alpha=32

how to run:
python3 scripts/dpo_finetuning.py \
  --model_name_or_path models/ft/def/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep2  \
  --train_file dpo_dataset/nl/split_dataset_categorized/new_negatives/train_dpo_final.jsonl \
  --val_file dpo_dataset/nl/split_dataset_categorized/new_negatives/val_dpo_final.jsonl \
  --output_dir models/ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss \
  --max_length 4096 \
  --max_prompt_length 2048 \
  --per_device_train_batch_size 1 \
  --gradient_accumulation_steps 16 \
  --num_train_epochs 1 \
  --learning_rate 2e-6 \
  --beta 0.1 \
  --eval_steps 100 \
  --save_steps 200 \
  --attn_implementation sdpa
"""

from __future__ import annotations

import argparse
import os
from typing import Optional, List

import torch
from datasets import load_dataset
from transformers import (
    AutoModelForCausalLM,
    AutoTokenizer,
    TrainingArguments,
)
from peft import LoraConfig
from trl import DPOTrainer, DPOConfig


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser()

    # Data
    p.add_argument("--train_file", type=str, required=True, help="JSONL/JSON file with prompt/chosen/rejected.")
    p.add_argument("--val_file", type=str, default=None, help="Optional JSONL/JSON validation file.")
    p.add_argument(
        "--dataset_field_mapping",
        type=str,
        default=None,
        help="Optional mapping if your fields differ. Format: prompt=...,chosen=...,rejected=...",
    )

    # Model
    p.add_argument("--model_name_or_path", type=str, required=True)
    p.add_argument("--output_dir", type=str, required=True)

    # Sequence lengths
    p.add_argument("--max_length", type=int, default=4096, help="Total length (prompt + completion).")
    p.add_argument("--max_prompt_length", type=int, default=3072, help="Max length for prompt.")
    p.add_argument(
        "--max_target_length",
        type=int,
        default=None,
        help="Optional cap for chosen/rejected length; defaults to max_length - max_prompt_length.",
    )

    # DPO
    p.add_argument("--beta", type=float, default=0.1, help="DPO beta (stability: 0.1 is a good start).")

    # Training hyperparams (stable defaults)
    p.add_argument("--per_device_train_batch_size", type=int, default=4)
    p.add_argument("--per_device_eval_batch_size", type=int, default=4)
    p.add_argument("--gradient_accumulation_steps", type=int, default=4)
    p.add_argument("--learning_rate", type=float, default=2e-6)
    p.add_argument("--num_train_epochs", type=float, default=1.0)
    p.add_argument("--max_steps", type=int, default=-1)  # -1 means use epochs
    p.add_argument("--warmup_ratio", type=float, default=0.03)
    p.add_argument("--weight_decay", type=float, default=0.0)
    p.add_argument("--lr_scheduler_type", type=str, default="cosine")
    p.add_argument("--seed", type=int, default=42)

    # Logging / eval / save
    p.add_argument("--logging_steps", type=int, default=10)
    p.add_argument("--eval_steps", type=int, default=200)
    p.add_argument("--save_steps", type=int, default=200)
    p.add_argument("--save_total_limit", type=int, default=2)
    p.add_argument("--report_to", type=str, default="none")  # set "wandb" if you want

    # Performance / precision (stable on H100: bf16)
    p.add_argument("--bf16", action="store_true", default=True, help="Use bf16 (recommended on H100).")
    p.add_argument("--fp16", action="store_true", default=False, help="Not recommended if bf16 available.")
    p.add_argument(
        "--gradient_checkpointing",
        action="store_true",
        default=False,
        help="Use only if you need more memory for longer sequences/bigger batch.",
    )
    p.add_argument(
        "--attn_implementation",
        type=str,
        default="sdpa",
        help="sdpa (default) or flash_attention_2 if installed.",
    )

    # LoRA (stable defaults)
    p.add_argument("--lora_r", type=int, default=16)
    p.add_argument("--lora_alpha", type=int, default=32)
    p.add_argument("--lora_dropout", type=float, default=0.05)
    p.add_argument(
        "--lora_target_modules",
        type=str,
        default="q_proj,k_proj,v_proj,o_proj,gate_proj,up_proj,down_proj",
        help="Comma-separated target module names for LoRA.",
    )

    return p.parse_args()


def maybe_field_map(ds, mapping: Optional[str]):
    """Map custom field names to prompt/chosen/rejected."""
    if not mapping:
        return ds

    # mapping format: "prompt=instruction,chosen=good,rejected=bad"
    m = {}
    for part in mapping.split(","):
        k, v = part.split("=")
        m[k.strip()] = v.strip()

    required = {"prompt", "chosen", "rejected"}
    if not required.issubset(set(m.keys())):
        raise ValueError(f"--dataset_field_mapping must provide {required}, got {set(m.keys())}")

    def _rename(example):
        return {
            "prompt": example[m["prompt"]],
            "chosen": example[m["chosen"]],
            "rejected": example[m["rejected"]],
        }

    # Keep only mapped columns
    keep_cols = {m["prompt"], m["chosen"], m["rejected"]}
    remove_cols = [c for c in ds.column_names if c not in keep_cols]
    return ds.map(_rename, remove_columns=remove_cols)


def load_json_dataset(path: str):
    # For JSONL/JSON file: load_dataset("json", data_files=..., split="train") works for both.
    ds = load_dataset("json", data_files=path, split="train")
    return ds


def main():
    args = parse_args()
    os.makedirs(args.output_dir, exist_ok=True)

    # Precision guards
    if args.fp16 and args.bf16:
        raise ValueError("Choose only one: --bf16 or --fp16. On H100 prefer --bf16.")
    if not args.bf16 and not args.fp16:
        raise ValueError("Please set --bf16 (recommended) or --fp16.")

    dtype = torch.bfloat16 if args.bf16 else torch.float16
    device_map = {"": 0}

    # Tokenizer
    tokenizer = AutoTokenizer.from_pretrained(args.model_name_or_path, use_fast=True)
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    # Policy model (trainable via LoRA)
    model = AutoModelForCausalLM.from_pretrained(
        args.model_name_or_path,
        torch_dtype=dtype,
        device_map=device_map,
        attn_implementation=args.attn_implementation,
    )
    # LoRA config
    target_modules: List[str] = [s.strip() for s in args.lora_target_modules.split(",") if s.strip()]
    peft_config = LoraConfig(
        r=args.lora_r,
        lora_alpha=args.lora_alpha,
        lora_dropout=args.lora_dropout,
        bias="none",
        task_type="CAUSAL_LM",
        target_modules=target_modules,
    )

    # Data
    train_ds = load_json_dataset(args.train_file)
    train_ds = maybe_field_map(train_ds, args.dataset_field_mapping)

    val_ds = None
    if args.val_file:
        val_ds = load_json_dataset(args.val_file)
        val_ds = maybe_field_map(val_ds, args.dataset_field_mapping)

    # Length defaults
    max_target_length = args.max_target_length
    if max_target_length is None:
        max_target_length = max(64, args.max_length - args.max_prompt_length)

    # Training args 
    tdpo_args = DPOConfig(
        output_dir=args.output_dir,

        # training
        per_device_train_batch_size=args.per_device_train_batch_size,
        per_device_eval_batch_size=args.per_device_eval_batch_size,
        gradient_accumulation_steps=args.gradient_accumulation_steps,
        learning_rate=args.learning_rate,
        num_train_epochs=args.num_train_epochs,
        max_steps=args.max_steps,
        warmup_ratio=args.warmup_ratio,
        weight_decay=args.weight_decay,
        lr_scheduler_type=args.lr_scheduler_type,
        loss_type="bco_pair",
        logging_steps=args.logging_steps,
        eval_strategy=("steps" if val_ds is not None else "no"),
        eval_steps=args.eval_steps,
        save_strategy="steps",
        save_steps=args.save_steps,
        save_total_limit=args.save_total_limit,
        report_to=args.report_to,
        seed=args.seed,
        gradient_checkpointing=args.gradient_checkpointing,
        bf16=args.bf16,
        fp16=args.fp16,
        remove_unused_columns=False,

        # DPO-specific
        beta=args.beta,
        max_length=args.max_length,
        max_prompt_length=args.max_prompt_length,
)


    trainer = DPOTrainer(
        model=model,
        ref_model=None,
        args=tdpo_args,
        train_dataset=train_ds,
        eval_dataset=val_ds,
        processing_class=tokenizer,
        peft_config=peft_config,
    )

    trainer.train()

    # Save adapter + tokenizer
    trainer.save_model(args.output_dir)
    tokenizer.save_pretrained(args.output_dir)

    print(f"\n✅ Done. Saved PEFT adapter + tokenizer to: {args.output_dir}")
    print("\nNext (Ollama): create a Modelfile like:")
    print("FROM llama3:8b-instruct")
    print(f"ADAPTER {os.path.abspath(args.output_dir)}")
    print("\nThen:")
    print("ollama create llama3-8b-dpo-json -f Modelfile")
    print("ollama run llama3-8b-dpo-json")


if __name__ == "__main__":
    main()
