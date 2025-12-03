#!/usr/bin/env bash
#execute this in sqlsmith directory 
# config
#DB_TARGET="host=127.0.0.1 port=5432 dbname=rel_stack user=cicciara password=cicciara"
DB_TARGET="host=127.0.0.1 port=5432 dbname=tpch user=sqlsmith_readonly"

NUM_QUERIES=2000
OUTPUT_FILE="../tpch_queries/queries_tpch_hacked_clean.sql"

echo "Generating queries with sqlsmith..."
echo "Target DB: $DB_TARGET"
echo "Number of queries: $NUM_QUERIES"
echo "Output file: $OUTPUT_FILE"

./sqlsmith \
  --target="$DB_TARGET" \
  --exclude-catalog \
  --dump-all-queries \
  --max-queries=$NUM_QUERIES  > "$OUTPUT_FILE"

echo "Done! Saved to $OUTPUT_FILE"
