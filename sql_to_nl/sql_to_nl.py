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
def build_prompt(sql: str, meta: dict | None = None) -> str:
    meta_txt = json.dumps(meta, ensure_ascii=False) if meta else "{}"
    return textwrap.dedent(f"""
    You convert SQL into ONE natural-language question.

    Rules (must follow):
    - Output ONLY the question. No quotes, no bullets, no extra text.
    - Do NOT mention SQL, joins, tables, columns, schema, keywords.
    - Be faithful: do not invent ranking, time constraints, or meanings not implied by the query.
    - If the query has LIMIT but NO ORDER BY: do NOT say "top" or "most recent".
      Use "up to N" or "give N example records" (no implied ordering).
    - If the query uses UNION (not UNION ALL): duplicates may be removed.
      Avoid saying an exact total unless guaranteed; prefer "up to N distinct".

    Meta (may help, but do not mention it):
    {meta_txt}

    SQL:
    {sql}
    """).strip()

# ---------------------------------------------------------
# Call for the LLM through the prompt, using OLLAMA
# ---------------------------------------------------------
def translate_sql_to_nl(llm, sql: str, meta: dict | None = None) -> str:
    prompt = build_prompt(sql, meta)
    response = llm.invoke([HumanMessage(content=prompt)])
    return response.content.strip()


# ---------------------------------------------------------
# Pipeline: SQL file → JSON file
# ---------------------------------------------------------
def process_sql_file(input_path: str, output_path: str, model_name=str):
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

    for i, item in enumerate(queries, start=1):
        sql = item["sql"]
        meta = item["meta"]
        print(f"➡️  Query {i}:")
        print(sql)
        print(f"    Meta: {meta}")


        nl = translate_sql_to_nl(llm, sql, meta)

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
        input_path="../set_queries/queries_tpch_curated.sql",
        output_path="../queries_with_prov/sql_nl_tpch_curated_llamalatest.json",
        model_name="llama3.3:latest"
    )
