import json
from langchain_ollama import ChatOllama
from langchain_core.messages import HumanMessage
import textwrap


# ---------------------------------------------------------
# Prompt for SQL to NL conversion
# ---------------------------------------------------------
def build_prompt(sql: str) -> str:
    return textwrap.dedent(f"""
    You are a system that converts SQL queries into clear and concise natural language questions.

    Your task:
    - Read the SQL query provided.
    - Produce a fluent natural-language description of what the query is asking **as if it were a question written by a human analyst**.
    - Do NOT mention joins, SQL keywords, schema, or technical details.
    - Only describe the meaning of the query.
    - Prefer starting with “What”, “Which”, “How many”, “List”, “Give me”, etc.
    - Do NOT add explanations, reasoning, or commentary.

    Output format:
    Return ONLY the natural-language question.

    SQL Query:
    {sql}
    """)


# ---------------------------------------------------------
# Call for the LLM through the prompt, using OLLAMA
# ---------------------------------------------------------
def translate_sql_to_nl(llm, sql: str) -> str:
    prompt = build_prompt(sql)
    response = llm.invoke([HumanMessage(content=prompt)])
    return response.content.strip()


# ---------------------------------------------------------
# Pipeline: SQL file → JSON file
# ---------------------------------------------------------
def process_sql_file(input_path: str, output_path: str, model_name="llama3:8b"):
    # llm initialization
    llm = ChatOllama(
        model=model_name,
        temperature=0,
        max_tokens=512
    )

    # read SQL file
    with open(input_path, "r") as f:
        content = f.read()

    # split the content of the file into individual queries
    queries = [q.strip() + ";" for q in content.split(";") if q.strip()]

    results = []

    print(f" Found {len(queries)} queries.\n")

    for i, sql in enumerate(queries, start=1):
        print(f"➡️  Query {i}:")
        print(sql)

        nl = translate_sql_to_nl(llm, sql)

        print(f"   👉 NL: {nl}\n")

        results.append({
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
        input_path="../queries_tpch_def.sql",
        output_path="sql_nl_tpch_llama8b.json",
        model_name="llama3:8b"
    )
