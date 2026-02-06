from peft import PeftModel
from transformers import AutoModelForCausalLM, AutoTokenizer
import torch

base_model_path = "meta-llama/Meta-Llama-3-8B-Instruct"
adapter_path = "models/ft/llama3_8b_sft_lora_chat_template_cat" 
save_to = "models/ft/llama3_8b_sft_merged_cat"

base_model = AutoModelForCausalLM.from_pretrained(base_model_path, torch_dtype=torch.bfloat16, device_map="cpu")
model = PeftModel.from_pretrained(base_model, adapter_path)

# Unisci i pesi LoRA al modello base
merged_model = model.merge_and_unload()

# Salva il modello risultante
merged_model.save_pretrained(save_to)
tokenizer = AutoTokenizer.from_pretrained(base_model_path)
tokenizer.save_pretrained(save_to)