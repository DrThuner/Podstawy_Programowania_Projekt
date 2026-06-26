#!/usr/bin/env bash
# Zadanie 8 - portfolio A4: 8 zdjec na stronie (2x4) z podpisami (nazwy plikow).
# Wymaga: katalog gotowe/ ze zdjeciami z zadania 7.
set -euo pipefail
magick montage gotowe/*.jpg \
  -label '%f' \
  -tile 2x4 \
  -geometry 300x300+10+10 \
  -page A4 \
  portfolio.pdf
echo "Gotowe: portfolio.pdf"
