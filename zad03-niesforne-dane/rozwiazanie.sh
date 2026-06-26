#!/usr/bin/env bash
# Zadanie 3 - Niesforne dane: 1 kolumna -> 3 kolumny (x y z) z naglowkiem.
# Uzycie: ./rozwiazanie.sh [plik_wejsciowy] [plik_wyjsciowy]
set -euo pipefail
IN="${1:-dane.txt}"
OUT="${2:-dane-3kolumny.txt}"

# usun znak CR (CRLF -> LF) i sklej kolejne 3 wiersze w jeden (separator: spacja)
sed 's/\r$//' "$IN" | paste -d' ' - - - > body.tmp
# dopisz wiersz naglowkowy
{ echo "x y z"; cat body.tmp; } > "$OUT"
rm -f body.tmp
echo "Zapisano $OUT ($(wc -l < "$OUT") wierszy)."
