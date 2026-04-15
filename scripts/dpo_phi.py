#!/usr/bin/env python3
from __future__ import annotations

import argparse
import os
from typing import Optional

import torch
from datasets import load_dataset
from transformers import AutoModelForCausalLM, AutoTokenizer
from peft import LoraConfig
from trl import DPOTrainer, DPOConfig


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser()

    # Data
    p.add_argument("--train_file", type=str, required=True)
    p.add_argument("--val_file", type=str, default=None)
    p.add_argument(
        "--dataset_field_mapping",
        type=str,
        default=None,
        help="Format: prompt=...,chosen=...,rejected=...",
    )

    # Model
    p.add_argument("--model_name_or_path", type=str, required=True)
    p.add_argument("--output_dir", type=str, required=True)

    # Lengths
    p.add_argument("--max_length", type=int, default=4096)
    p.add_argument("--max_prompt_length", type=int, default=3072)
    p.add_argument("--max_target_length", type=int, default=None)

    # DPO
    p.add_argument("--beta", type=float, default=0.1)

    # Training
    p.add_argument("--per_device_train_batch_size", type=int, default=1)
    p.add_argument("--per_device_eval_batch_size", type=int, default=1)
    p.add_argument("--gradient_accumulation_steps", type=int, default=16)
    p.add_argument("--learning_rate", type=float, default=2e-6)
    p.add_argument("--num_train_epochs", type=float, default=1.0)
    p.add_argument("--max_steps", type=int, default=-1)
    p.add_argument("--warmup_ratio", type=float, default=0.03)
    p.add_argument("--weight_decay", type=float, default=0.0)
    p.add_argument("--lr_scheduler_type", type=str, default="cosine")
    p.add_argument("--seed", type=int, default=42)

    # Logging / eval / save
    p.add_argument("--logging_steps", type=int, default=10)
    p.add_argument("--eval_steps", type=int, default=100)
    p.add_argument("--save_steps", type=int, default=200)
    p.add_argument("--save_total_limit", type=int, default=2)
    p.add_argument("--report_to", type=str, default="none")

    # Precision
    p.add_argument("--bf16", action="store_true", default=True)
    p.add_argument("--fp16", action="store_true", default=False)
    p.add_argument("--gradient_checkpointing", action="store_true", default=True)

    # Phi attention fallback
    p.add_argument("--attn_implementation", type=str, default="eager")

    # LoRA
    p.add_argument("--lora_r", type=int, default=16)
    p.add_argument("--lora_alpha", type=int, default=32)
    p.add_argument("--lora_dropout", type=float, default=0.05)

    return p.parse_args()


def maybe_field_map(ds, mapping: Optional[str]):
    if not mapping:
        return ds

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

    return ds.map(_rename, remove_columns=ds.column_names)


def load_json_dataset(path: str):
    return load_dataset("json", data_files=path, split="train")


def apply_chat_template_to_prompt(ds, tokenizer):
    def process(ex):
        messages = [{"role": "user", "content": ex["prompt"]}]
        prompt_chat = tokenizer.apply_chat_template(
            messages,
            tokenize=False,
            add_generation_prompt=True,
        )
        return {
            "prompt": prompt_chat,
            "chosen": ex["chosen"],
            "rejected": ex["rejected"],
        }

    return ds.map(
        process,
        remove_columns=[c for c in ds.column_names if c not in {"prompt", "chosen", "rejected"}],
        desc="Applying Phi chat template to prompts",
    )


def main():
    args = parse_args()
    os.makedirs(args.output_dir, exist_ok=True)

    if args.fp16 and args.bf16:
        raise ValueError("Choose only one between --bf16 and --fp16.")
    if not args.bf16 and not args.fp16:
        raise ValueError("Set --bf16 or --fp16.")

    dtype = torch.bfloat16 if args.bf16 else torch.float16

    tokenizer = AutoTokenizer.from_pretrained(
        args.model_name_or_path,
        trust_remote_code=True,
        use_fast=True,
        local_files_only=True,
    )
    tokenizer.model_max_length = args.max_length
    tokenizer.pad_token = tokenizer.unk_token
    tokenizer.pad_token_id = tokenizer.convert_tokens_to_ids(tokenizer.pad_token)
    tokenizer.padding_side = "right"

    model = AutoModelForCausalLM.from_pretrained(
        args.model_name_or_path,
        trust_remote_code=True,
        torch_dtype=dtype,
        attn_implementation=args.attn_implementation,
        use_cache=False,
        local_files_only=True,
    )


    model.gradient_checkpointing_enable()
    model.enable_input_require_grads()
    model.config.use_cache = False

    peft_config = LoraConfig(
        r=args.lora_r,
        lora_alpha=args.lora_alpha,
        lora_dropout=args.lora_dropout,
        bias="none",
        task_type="CAUSAL_LM",
        target_modules="all-linear",
    )

    train_ds = load_json_dataset(args.train_file)
    train_ds = maybe_field_map(train_ds, args.dataset_field_mapping)
    train_ds = apply_chat_template_to_prompt(train_ds, tokenizer)

    val_ds = None
    if args.val_file:
        val_ds = load_json_dataset(args.val_file)
        val_ds = maybe_field_map(val_ds, args.dataset_field_mapping)
        val_ds = apply_chat_template_to_prompt(val_ds, tokenizer)

    max_target_length = args.max_target_length
    if max_target_length is None:
        max_target_length = max(64, args.max_length - args.max_prompt_length)

    dpo_args = DPOConfig(
        output_dir=args.output_dir,
        per_device_train_batch_size=args.per_device_train_batch_size,
        per_device_eval_batch_size=args.per_device_eval_batch_size,
        gradient_accumulation_steps=args.gradient_accumulation_steps,
        learning_rate=args.learning_rate,
        num_train_epochs=args.num_train_epochs,
        max_steps=args.max_steps,
        warmup_ratio=args.warmup_ratio,
        weight_decay=args.weight_decay,
        lr_scheduler_type=args.lr_scheduler_type,
        logging_steps=args.logging_steps,
        eval_strategy="steps" if val_ds is not None else "no",
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
        prediction_loss_only=True,
        eval_accumulation_steps=1,
        beta=args.beta,
        max_length=args.max_length,
        max_prompt_length=args.max_prompt_length,
        max_completion_length=max_target_length,
        loss_type="bco_pair",
    )

    trainer = DPOTrainer(
        model=model,
        ref_model=None,
        args=dpo_args,
        train_dataset=train_ds,
        eval_dataset=val_ds,
        processing_class=tokenizer,
        peft_config=peft_config,
    )

    print("\n=== Example formatted prompt ===\n")
    print(train_ds[0]["prompt"][:2000])

    trainer.train()

    trainer.save_model(args.output_dir)
    tokenizer.save_pretrained(args.output_dir)

    print(f"\n✅ Done. Saved PEFT adapter + tokenizer to: {args.output_dir}")


if __name__ == "__main__":
    '''
  
  python3 scripts/dpo_phi.py \
  --model_name_or_path ./models/phi3.5/ft/sql/merged/phi_sft_sql_ep2 \
  --train_file dpo_dataset/sql/split_dataset_categorized/new_negatives/train_dpo_final.jsonl \
  --val_file dpo_dataset/sql/split_dataset_categorized/new_negatives/val_dpo_final.jsonl \
  --output_dir models/phi3.5/ft/sql/phi35_dpo_after_sft_ep2_sql_ep2_bcoloss \
  --max_length 4096 \
  --max_prompt_length 3072 \
  --per_device_train_batch_size 1 \
  --per_device_eval_batch_size 1 \
  --gradient_accumulation_steps 16 \
  --num_train_epochs 2 \
  --learning_rate 2e-6 \
  --beta 0.1 \
  --eval_steps 100 \
  --save_steps 200 \
  --attn_implementation eager
    '''
    main()