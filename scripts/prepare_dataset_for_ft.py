import json
import argparse
from transformers import AutoTokenizer

def format_dataset(input_file, output_file, model_id):
    tokenizer = AutoTokenizer.from_pretrained(model_id)
    # Definiamo chiaramente il token di fine turno di Llama 3
    EOT_TOKEN = "<|eot_id|>"
    
    with open(input_file, 'r', encoding='utf-8') as fin, \
         open(output_file, 'w', encoding='utf-8') as fout:
        
        for line in fin:
            item = json.loads(line)
            
            # 1. Formattiamo il PROMPT (User + Assistant Header)
            messages = [{"role": "user", "content": item['prompt']}]
            item['prompt'] = tokenizer.apply_chat_template(
                messages, 
                tokenize=False, 
                add_generation_prompt=True
            )
            
            # 2. Formattiamo CHOSEN e REJECTED
            # Aggiungiamo l'EOT alla fine di entrambi se non c'è già
            for key in ['chosen', 'rejected']:
                if key in item:
                    # Rimuoviamo eventuali spazi bianchi e aggiungiamo EOT
                    content = item[key].strip()
                    if not content.endswith(EOT_TOKEN):
                        item[key] = f"{content}{EOT_TOKEN}"
            
            fout.write(json.dumps(item) + "\n")
    print(f"✅ Dataset convertito salvato in: {output_file}")

if __name__ == "__main__":
    '''how to run:
    python3 scripts/prepare_dataset_for_ft.py --input dpo_dataset/split_dataset/train_tokfiltered.jsonl --output dpo_dataset/split_dataset/train_formatted.jsonl    
    python3 scripts/prepare_dataset_for_ft.py --input dpo_dataset/split_dataset/val_tokfiltered.jsonl --output dpo_dataset/split_dataset/val_formatted.jsonl
    python3 scripts/prepare_dataset_for_ft.py --input dpo_dataset/split_dataset/test_tokfiltered.jsonl --output dpo_dataset/split_dataset/test_formatted.jsonl
    '''
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True)
    parser.add_argument("--output", required=True)
    parser.add_argument("--model", default="meta-llama/Meta-Llama-3-8B-Instruct")
    args = parser.parse_args()
    
    format_dataset(args.input, args.output, args.model)


