import json
from langchain_ollama import ChatOllama
from langchain_core.messages import HumanMessage
import textwrap
import re
import json

# ---------------------------------------------------------
# SQL parsing with metadata extraction
# ---------------------------------------------------------
def parse_sql_with_meta(content: str):
    pattern = re.compile(
        r"--\s*meta\s*(\{.*?\})\s*(.*?);",
        re.DOTALL | re.IGNORECASE
    )

    matches = pattern.findall(content)

    parsed = []
    for meta_str, sql in matches:
        parsed.append({
            "meta": json.loads(meta_str),  # diventa dict
            "sql": sql.strip() + ";"
        })

    return parsed

# ---------------------------------------------------------
# Prompt for SQL to NL conversion
# ---------------------------------------------------------
def build_prompt(sql: str, meta: dict | None = None, schema_info: str = "") -> str:
    meta_txt = json.dumps(meta, ensure_ascii=False) if meta else "{}"
    
    # Abbiamo trasformato le regole in una struttura più rigida 
    # per forzare Llama 3.3 a gestire UNION/EXCEPT correttamente.
    return textwrap.dedent(f"""
    ### ROLE
    You are an expert Data Analyst translating complex SQL into natural English.
    
    ### DATABASE SCHEMA
    {schema_info}
    ### INSTRUCTIONS
    - Provide ONLY the final question. No preamble, no quotes, no explanations.
    - Be faithful to the logic:
        * JOINs: Describe the relationship (e.g., "orders placed by customers" instead of "orders joined with customers").
        * UNION: Use "Combine the results of..." or "Find all instances of both X and Y."
        * EXCEPT: Use "Find X, excluding those that are also Y."
        * AGGREGATES: Translate COUNT as "how many", SUM as "total", and AVG as "average".
    - STRICTOR RULES:
        * If LIMIT N exists without ORDER BY, use "Give N examples of...". 
        * NEVER say "top" or "best" unless there is an ORDER BY.
        * Do NOT mention technical SQL terms like 'table', 'column', 'join', or 'query'.
    
    ### CONTEXT (Metadata)
    {meta_txt}

    ### SQL QUERY
    {sql}

    ### FINAL NATURAL LANGUAGE QUESTION
    """).strip()

# ---------------------------------------------------------
# Call for the LLM through the prompt, using OLLAMA
# ---------------------------------------------------------
def translate_sql_to_nl(llm, sql: str, meta: dict | None = None, schema_info: str = "") -> str:
    prompt = build_prompt(sql, meta, schema_info)
    response = llm.invoke([HumanMessage(content=prompt)])
    return response.content.strip()


# ---------------------------------------------------------
# Pipeline: SQL file → JSON file
# ---------------------------------------------------------
def process_sql_file(input_path: str, output_path: str, model_name:str):
    # llm initialization
    llm = ChatOllama(
        model=model_name,
        temperature=0,
        max_tokens=512,
        format=""
    )

    # read SQL file
    with open(input_path, "r") as f:
        content = f.read()

    # split the content of the file into individual queries
    queries = parse_sql_with_meta(content)

    results = []

    print(f" Found {len(queries)} queries.\n")

    # read schema info from a txt file
    with open("./schema_relstack.txt", "r") as f:
        schema_info = f.read()
    print(" Using schema info:\n")
    print(schema_info)
    print("\n")
    for i, item in enumerate(queries, start=1):
        sql = item["sql"]
        meta = item["meta"]
        print(f"➡️  Query {i}:")
        print(sql)
        print(f"    Meta: {meta}")


        nl = translate_sql_to_nl(llm, sql, meta, schema_info)

        print(f"   👉 NL: {nl}\n")

        results.append({
            "id": i,
            "meta": meta,
            "sql": sql,
            "nl": nl
        })

    # save results to JSON file
    with open(output_path, "w") as out:
        json.dump(results, out, indent=4, ensure_ascii=False)

    print(f"\n✅ Saved in {output_path}")


# ---------------------------------------------------------
# Main 
# ---------------------------------------------------------
if __name__ == "__main__":
    process_sql_file(
        input_path="../set_queries/queries_relstack_curated.sql",
        output_path="../queries_with_prov/sql_nl_new_relstack_llamalatest.json",
        model_name="llama3.3:latest"
    )
