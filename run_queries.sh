#!/bin/sh

DB="tpch"
USER="cicciara"
HOST="127.0.0.1"
PORT="5432"
FILE="queries_tpch_def.sql"
OUT="report_tpch.csv"
# password has been set in .pgpass file for security
# n  CSV
echo "id,query,success,error" > "$OUT"

buffer=""
id=1

# Leggi il file riga per riga
while IFS= read -r line; do
    # Accumula nel buffer con newline (irrilevante per SQL ma migliora leggibilità)
    if [ -z "$buffer" ]; then
        buffer="$line"
    else
        buffer="$buffer
$line"
    fi

    # Se la riga termina con ';', consideriamo la query completa
    echo "$line" | grep -qE ";[[:space:]]*$" || continue

    # Rimuovi spazi e newline iniziali/finali
    query=$(printf "%s" "$buffer" | sed 's/^[[:space:]\n]*//; s/[[:space:]\n]*$//')
    # Stampa la query in esecuzione
    echo "Eseguendo query id=$id: $query"
    # Esegui la query
    ERR=$(printf "%s" "$query" \
    | psql -v ON_ERROR_STOP=1 -h "$HOST" -U "$USER" -d "$DB" 2>&1 1>/dev/null)
    STATUS=$?
    # Prepara testo per CSV
    # - manteniamo le virgole nella query
    # - rimpiazziamo i doppi apici con "" (escaping CSV standard)
    QUERY_CSV=$(printf "%s" "$query" | tr '\n' ' ' | sed 's/"/""/g')
    ERR_CSV=$(printf "%s" "$ERR" | tr '\n' ' ' | sed 's/"/""/g')

    if [ $STATUS -eq 0 ]; then
        echo "$id,\"$QUERY_CSV\",YES,\"\"" >> "$OUT"
    else
        echo "$id,\"$QUERY_CSV\",NO,\"$ERR_CSV\"" >> "$OUT"
    fi

    # Reset per la query successiva
    buffer=""
    id=$((id + 1))
done < "$FILE"
