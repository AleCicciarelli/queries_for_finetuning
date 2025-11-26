#!/usr/bin/env bash
#execute this in sqlsmith directory 
# config
DB_TARGET="host=127.0.0.1 port=5432 dbname=tpch user=sqlsmith_readonly"
NUM_QUERIES=20000
OUTPUT_FILE="../tpch_queries/queries_tpch_noprob_.sql"

echo "Generating queries with sqlsmith..."
echo "Target DB: $DB_TARGET"
echo "Number of queries: $NUM_QUERIES"
echo "Output file: $OUTPUT_FILE"

./sqlsmith \
  --target="$DB_TARGET" \
  --exclude-catalog \
  --dump-all-queries \
  --max-queries=$NUM_QUERIES \
  2>/dev/null |
awk '
/;$/ {
  q = q $0 "\n"
  low = tolower(q)

  # deve iniziare con SELECT
  if (low !~ /^select/) { q=""; next }
  
  # no subquery
  #if (low ~ /select.*select/) { q=""; next }

  # no functions foo(...)
  if (low ~ /[a-z0-9_]+\s*\([^)]*\)/) {
    if (low !~ /between/) { q=""; next }
  }

  # no aggregazioni
  # if (low ~ /(sum|min|max|avg)/) { q=""; next }

  # no tablesample (bernoulli/system)
  if (low ~ /tablesample/) { q=""; next }

  # no join complessi
  if (low ~ /(full join|right join|cross join)/) { q=""; next }
  # rimuovi alias brutti generati da sqlsmith
  gsub(/[a-z]+_[0-9]+\./, "", q)
  gsub(/as [a-z]+_[0-9]+/, "", q)
  gsub(/public\./, "", q)

  # niente WHERE troppo lunghi
  if (gsub(/\band\b/, "&") > 6) { q=""; next }
  # elimina condizioni inutili come: 31 is not null, 5 = 5, 'abc' is null, null = 1
  if (low ~ /where[ \t\n\r]+[0-9][0-9]*[ \t\n\r]+(is|=|<|>|!=|<>)/) { q=""; next }

  # output della query valida
  print q "\n"
  q=""
  next
}

# accumula righe
{
  q = q $0 "\n"
}
' > "$OUTPUT_FILE"

echo "Done! Saved to $OUTPUT_FILE"
