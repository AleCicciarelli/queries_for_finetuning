import sys
import logging
import argparse

import datasets
from datasets import load_dataset
from peft import LoraConfig
import torch
import transformers
from trl import SFTTrainer
from transformers import AutoModelForCausalLM, AutoTokenizer, TrainingArguments

logger = logging.getLogger(__name__)


def parse_args():
    p = argparse.ArgumentParser()
    p.add_argument("--model_name_or_path", type=str, default="microsoft/Phi-3.5-mini-instruct")
    p.add_argument("--train_file", type=str, required=True)
    p.add_argument("--val_file", type=str, required=True)
    p.add_argument("--output_dir", type=str, required=True)
    p.add_argument("--num_train_epochs", type=int, default=2)
    p.add_argument("--per_device_train_batch_size", type=int, default=1)
    p.add_argument("--per_device_eval_batch_size", type=int, default=1)
    p.add_argument("--gradient_accumulation_steps", type=int, default=16)
    p.add_argument("--learning_rate", type=float, default=5e-6)
    p.add_argument("--max_length", type=int, default=4096)
    return p.parse_args()


def apply_chat_template(example, tokenizer):
    messages = [
        {"role": "user", "content": example["prompt"]},
        {"role": "assistant", "content": example["chosen"]},
    ]

    example["text"] = tokenizer.apply_chat_template(
        messages,
        tokenize=False,
        add_generation_prompt=False,
    )
    return example


def main():
    args = parse_args()

    training_config = {
        "bf16": True,
        "do_eval": True,
        "eval_strategy": "steps",
        "learning_rate": args.learning_rate,
        "log_level": "info",
        "logging_steps": 10,
        "logging_strategy": "steps",
        "lr_scheduler_type": "cosine",
        "num_train_epochs": args.num_train_epochs,
        "max_steps": -1,
        "output_dir": args.output_dir,
        "overwrite_output_dir": True,
        "per_device_eval_batch_size": args.per_device_eval_batch_size,
        "per_device_train_batch_size": args.per_device_train_batch_size,
        "remove_unused_columns": True,
        "save_steps": 100,
        "eval_steps": 100,
        "save_total_limit": 2,
        "seed": 0,
        "gradient_checkpointing": True,
        "gradient_checkpointing_kwargs": {"use_reentrant": False},
        "gradient_accumulation_steps": args.gradient_accumulation_steps,
        "warmup_ratio": 0.03,
        "report_to": "none",
    }

    peft_config = {
        "r": 16,
        "lora_alpha": 32,
        "lora_dropout": 0.05,
        "bias": "none",
        "task_type": "CAUSAL_LM",
        "target_modules": "all-linear",
        "modules_to_save": None,
    }

    train_conf = TrainingArguments(**training_config)
    peft_conf = LoraConfig(**peft_config)

    logging.basicConfig(
        format="%(asctime)s - %(levelname)s - %(name)s - %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
        handlers=[logging.StreamHandler(sys.stdout)],
    )
    log_level = train_conf.get_process_log_level()
    logger.setLevel(log_level)
    datasets.utils.logging.set_verbosity(log_level)
    transformers.utils.logging.set_verbosity(log_level)
    transformers.utils.logging.enable_default_handler()
    transformers.utils.logging.enable_explicit_format()

    model = AutoModelForCausalLM.from_pretrained(
        args.model_name_or_path,
        use_cache=False,
        trust_remote_code=True,
        attn_implementation="eager",
        torch_dtype=torch.bfloat16,
        device_map=None,
    )

    tokenizer = AutoTokenizer.from_pretrained(
        args.model_name_or_path,
        trust_remote_code=True,
    )
    tokenizer.model_max_length = args.max_length
    tokenizer.pad_token = tokenizer.unk_token
    tokenizer.pad_token_id = tokenizer.convert_tokens_to_ids(tokenizer.pad_token)
    tokenizer.padding_side = "right"

    train_dataset = load_dataset("json", data_files=args.train_file, split="train")
    val_dataset = load_dataset("json", data_files=args.val_file, split="train")

    column_names = train_dataset.column_names

    processed_train_dataset = train_dataset.map(
        apply_chat_template,
        fn_kwargs={"tokenizer": tokenizer},
        remove_columns=column_names,
        desc="Applying chat template to train set",
    )

    processed_val_dataset = val_dataset.map(
        apply_chat_template,
        fn_kwargs={"tokenizer": tokenizer},
        remove_columns=column_names,
        desc="Applying chat template to val set",
    )
    print(processed_train_dataset[0]["text"])
    trainer = SFTTrainer(
        model=model,
        args=train_conf,
        peft_config=peft_conf,
        train_dataset=processed_train_dataset,
        eval_dataset=processed_val_dataset,
    )

    train_result = trainer.train()
    trainer.log_metrics("train", train_result.metrics)
    trainer.save_metrics("train", train_result.metrics)
    trainer.save_state()

    eval_metrics = trainer.evaluate()
    eval_metrics["eval_samples"] = len(processed_val_dataset)
    trainer.log_metrics("eval", eval_metrics)
    trainer.save_metrics("eval", eval_metrics)

    trainer.save_model(args.output_dir)
    tokenizer.save_pretrained(args.output_dir)

    print(f"✅ Training completato. Modello salvato in: {args.output_dir}")


if __name__ == "__main__":
    '''
    python3 scripts/sft_phi.py   --model_name_or_path microsoft/Phi-3.5-mini-instruct  \
      --train_file dpo_dataset/sql/split_dataset_categorized/new_negatives/train_sft.jsonl   --val_file dpo_dataset/sql/split_dataset_categorized/new_negatives/val_sft.jsonl  \
     --output_dir models/phi3.5/sql/phi_sft_lora_chat_template_sql_ep1   --num_train_epochs 1   \
        --per_device_train_batch_size 1   --per_device_eval_batch_size 1  \
     --gradient_accumulation_steps 16   --learning_rate 5e-6   --max_length 4096
    '''
    main()