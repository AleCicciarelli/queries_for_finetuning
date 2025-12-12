#!/bin/sh
set -e

DB="tpch"
USER="cicciara"
HOST="127.0.0.1"
PORT="5432"

INPUT_SQL="queries_tpch_def.sql"
OUTPUT_JSONL="tpch_results.jsonl"

# =========================
# 1️⃣ SETUP (SESSIONE 1)
# =========================

echo "=== ProvSQL setup ==="

psql -h "$HOST" -U "$USER" -d "$DB" <<'SQL'
CREATE EXTENSION IF NOT EXISTS provsql;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- solo per log / sanity check
SHOW search_path;
SQL

echo "=== Setup completed ==="
echo

# =========================
# 2️⃣ ESECUZIONE QUERY
#    (SESSIONI INDIPENDENTI)
# =========================

: > "$OUTPUT_JSONL"

buffer=""
id=1

while IFS= read -r line || [ -n "$line" ]; do
    # accumula righe
    if [ -z "$buffer" ]; then
        buffer="$line"
    else
        buffer="$buffer
$line"
    fi

    # query completa se termina con ;
    echo "$line" | grep -qE ";[[:space:]]*$" || continue

    # cleanup query
    query=$(printf "%s" "$buffer" \
        | sed 's/^[[:space:]\n]*//; s/[[:space:]\n]*$//' \
        | sed 's/;[[:space:]]*$//')

    echo "→ Eseguo query id=$id"

    # =========================
    # esecuzione AS-IS
    # =========================
    RESULT=$(printf "%s" "$query" \
      | psql -h "$HOST" -U "$USER" -d "$DB" \
             -A -F $'\t' -P footer=off \
             -v ON_ERROR_STOP=1 2>&1)
    STATUS=$?

    # escape JSON
    QUERY_JSON=$(printf "%s" "$query" | sed 's/\\/\\\\/g; s/"/\\"/g')

    if [ $STATUS -eq 0 ]; then
        # risultato multilinea → array JSON
        RESULT_JSON=$(printf "%s" "$RESULT" \
          | awk -F'\t' '
            BEGIN { print "[" }
            NF {
              printf("{")
              for (i=1; i<=NF; i++) {
                printf("\"col%d\":\"%s\"", i, $i)
                if (i<NF) printf(",")
              }
              printf("},\n")
            }
            END { print "]" }
          ' | sed '$s/},/}/')

        printf '{ "id": %d, "sql_query": "%s", "result": %s }\n' \
          "$id" "$QUERY_JSON" "$RESULT_JSON" >> "$OUTPUT_JSONL"
    else
        ERR_JSON=$(printf "%s" "$RESULT" | sed 's/\\/\\\\/g; s/"/\\"/g')
        printf '{ "id": %d, "sql_query": "%s", "error": "%s" }\n' \
          "$id" "$QUERY_JSON" "$ERR_JSON" >> "$OUTPUT_JSONL"
    fi

    buffer=""
    id=$((id + 1))
done < "$INPUT_SQL"

echo
echo "=== Done. Results written to $OUTPUT_JSONL ==="
