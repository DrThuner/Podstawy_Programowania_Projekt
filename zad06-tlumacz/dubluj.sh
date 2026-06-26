#!/usr/bin/env bash
# Zadanie 6 cz.1 - dublowanie linii z kluczem; kopia jako komentarz '//'.
# Uzycie: ./dubluj.sh [en-7.2.json5] [pl-7.2.json5]
set -euo pipefail
IN="${1:-en-7.2.json5}"
OUT="${2:-pl-7.2.json5}"
awk '/"[^"]*"[[:space:]]*:/ { print "//" $0; print $0; next } { print }' "$IN" > "$OUT"
echo "Zapisano $OUT ($(wc -l < "$OUT") linii)."
