#!/usr/bin/env bash
# Zadanie 9 - uporzadkuj kopie YYYY-MM-DD.zip w strukture kopie/rok/miesiac/.
# Wymaga: kopie-1.zip, kopie-2.zip w biezacym katalogu.
set -euo pipefail
mkdir -p kopie
unzip -o kopie-1.zip -d kopie
unzip -o kopie-2.zip -d kopie

for f in kopie/*.zip; do
  base="$(basename "$f" .zip)"          # np. 2010-05-22
  year="${base%%-*}"                    # 2010
  month="$(echo "$base" | cut -d- -f2)" # 05
  mkdir -p "kopie/$year/$month"
  mv "$f" "kopie/$year/$month/"
done
echo "Uporzadkowano kopie wg rok/miesiac."
