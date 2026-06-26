#!/usr/bin/env bash
# Zadanie 4 - Dodawanie poprawek: diff -> latka (patch) -> weryfikacja MD5.
# Uzycie: ./rozwiazanie.sh [lista_oryginalna] [lista_poprawiona]
set -euo pipefail
ORIG="${1:-lista.txt}"
POP="${2:-lista-pop.txt}"

# 1. utworz latke w formacie unified
diff -u "$ORIG" "$POP" > lista.patch || true
echo "Utworzono lista.patch ($(wc -l < lista.patch) linii)."

# 2. zastosuj latke do kopii oryginalu i porownaj sumy MD5
cp "$ORIG" lista-zlatana.txt
patch -s lista-zlatana.txt < lista.patch
echo "Sumy MD5 (powinny byc identyczne):"
md5sum lista-zlatana.txt "$POP"
