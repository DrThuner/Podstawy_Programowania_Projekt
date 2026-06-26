#!/usr/bin/env bash
# Zadanie 6 cz.2 - tylko nowe frazy z wersji 7.4 (nieobecne w 7.2).
# Uzycie: ./nowe-frazy.sh [en-7.2.json5] [en-7.4.json5] [pl-7.4.json5]
set -euo pipefail
STARA="${1:-en-7.2.json5}"
NOWA="${2:-en-7.4.json5}"
OUT="${3:-pl-7.4.json5}"
# -F doslownie, -x cala linia, -v negacja, -f wzorce z pliku
grep -F -x -v -f "$STARA" "$NOWA" > "$OUT" || true
echo "Zapisano $OUT ($(grep -c '"[^"]*"[[:space:]]*:' "$OUT") nowych fraz)."
