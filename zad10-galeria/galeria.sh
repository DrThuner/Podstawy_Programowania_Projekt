#!/usr/bin/env bash
# Zadanie 10 - galeria HTML z szablonu, blok powtorzony dla kazdego zdjecia z zad. 7.
# Uzycie: ./galeria.sh [szablon index.html] [wynik galeria.html]
# Wymaga: katalog gotowe/ ze zdjeciami (lub zmien sciezke ponizej).
set -euo pipefail
SRC="${1:-index.html}"
OUT="${2:-galeria.html}"
{
  # naglowek szablonu az do pierwszego bloku obrazka
  sed '/<!-- plik 1:/,$d' "$SRC"
  # blok HTML dla kazdego zdjecia
  for img in gotowe/*.jpg; do
    name="$(basename "$img")"
    cat <<BLOK
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="$name">
      <img src="$name">
    </a>
    <div class="desc">$name</div>
  </div>
</div>
BLOK
  done
  # zamkniecie dokumentu
  printf '<div class="clearfix"></div>\n</body>\n</html>\n'
} > "$OUT"
echo "Zapisano $OUT."
