#!/usr/bin/env python3
from __future__ import annotations

import os
import torch
import argparse
import json
from datasets import load_dataset
from transformers import (
    AutoModelForCausalLM,
    AutoTokenizer,
)
from peft import LoraConfig
from trl import SFTTrainer, SFTConfig

def parse_args():
    p = argparse.ArgumentParser()
    p.add_argument("--model_name_or_path", type=str, required=True)
    p.add_argument("--train_file", type=str, required=True)
    p.add_argument("--val_file", type=str, required=True)
    p.add_argument("--output_dir", type=str, required=True)
    p.add_argument("--num_train_epochs", type=int, default=1)
    p.add_argument("--per_device_train_batch_size", type=int, default=1)
    p.add_argument("--learning_rate", type=float, default=2e-6)
    p.add_argument("--max_length", type=int, default=4096)
    return p.parse_args()

def load_and_format_sft(path: str, tokenizer: AutoTokenizer):
    """
    Carica il dataset, estrae i campi necessari e applica il Chat Template.
    A differenza del DPO, qui concateniamo Prompt e Chosen in un unico campo 'text'.
    """
    ds = load_dataset("json", data_files=path, split="train")

    def process(example):
        # 1. Messaggio dell'utente (Istruzioni + Question + Context)
        messages = [
            {"role": "user", "content": example["prompt"]},
            {"role": "assistant", "content": example["chosen"]}
        ]
        
        # 2. Applichiamo il template a tutta la conversazione.
        # tokenize=False perché SFTTrainer gestisce la tokenizzazione internamente.
        full_text = tokenizer.apply_chat_template(messages, tokenize=False)

        return {"text": full_text}

    # Pulizia totale delle colonne extra (meta, negative_mode, id, rejected...)
    column_names = ds.column_names
    return ds.map(process, remove_columns=column_names, desc="Formatting SFT chat templates")

def main():
    args = parse_args()
    print("CWD:", os.getcwd())
    print("train exists:", os.path.exists(args.train_file), args.train_file)
    print("val exists:", os.path.exists(args.val_file), args.val_file)

    os.makedirs(args.output_dir, exist_ok=True)
    
    # Tokenizer con configurazione specifica per Llama 3
    tokenizer = AutoTokenizer.from_pretrained(args.model_name_or_path, use_fast=True)
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token
    tokenizer.padding_side = "right" # Per SFT il padding a destra è lo standard

    # Caricamento Modello
    model = AutoModelForCausalLM.from_pretrained(
        args.model_name_or_path,
        torch_dtype=torch.bfloat16,
        attn_implementation="sdpa"
    )
    model.config.use_cache = False
    # Configurazione LoRA coerente con il DPO
    peft_config = LoraConfig(
        r=16,
        lora_alpha=32,
        target_modules=["q_proj", "k_proj", "v_proj", "o_proj", "gate_proj", "up_proj", "down_proj"],
        lora_dropout=0.05,
        bias="none",
        task_type="CAUSAL_LM",
    )

    # 3. Caricamento e Formattazione Dataset
    train_ds = load_and_format_sft(args.train_file, tokenizer)
    val_ds = load_and_format_sft(args.val_file, tokenizer)

    # Configurazione SFT
    sft_config = SFTConfig(
        output_dir=args.output_dir,
        max_length=args.max_length,
        per_device_train_batch_size=args.per_device_train_batch_size,
        gradient_accumulation_steps=16, # Bilancia il batch size piccolo su H100
        learning_rate=args.learning_rate,
        num_train_epochs=args.num_train_epochs,
        logging_steps=10,
        eval_strategy="steps",
        eval_steps=100,
        save_strategy="steps",
        save_steps=200,
        bf16=True,
        report_to="none",
        lr_scheduler_type="cosine",
        warmup_ratio=0.03,
        # Importante: non aggiungere token speciali due volte se il template li ha già
        dataset_kwargs={
            "add_special_tokens": False,
            "append_concat_token": False,
        }
    )

    trainer = SFTTrainer(
        model=model,
        train_dataset=train_ds,
        eval_dataset=val_ds,
        peft_config=peft_config,
        args=sft_config,
    )

    trainer.train()
    trainer.save_model(args.output_dir)
    tokenizer.save_pretrained(args.output_dir)
    print(f"✅ SFT completata. Modello salvato in: {args.output_dir}")

if __name__ == "__main__":
    '''how to run:
    python3 scripts/sft_finetuning.py \
      --model_name_or_path meta-llama/Meta-Llama-3-8B-Instruct \
      --train_file dpo_dataset/nl/split_dataset_categorized/new_negatives/train_sft.jsonl \
      --val_file dpo_dataset/nl/split_dataset_categorized/new_negatives/val_sft.jsonl \
      --output_dir models/ft/def/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep2 \
      --num_train_epochs 2 \
      --per_device_train_batch_size 1 \
      --learning_rate 2e-6 \
      --max_length 4096'''
    main()