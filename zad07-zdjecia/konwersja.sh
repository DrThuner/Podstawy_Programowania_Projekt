#!/usr/bin/env bash
# Zadanie 7 - rozpakuj, konwertuj do JPG, 96x96 DPI, wysokosc 720 px, spakuj.
# Wymaga: kopie-1.zip, kopie-2.zip w biezacym katalogu oraz ImageMagick (magick).
set -euo pipefail
mkdir -p kopie photos gotowe
unzip -o kopie-1.zip -d kopie
unzip -o kopie-2.zip -d kopie

# kazdy backup zawiera jedno zdjecie - wypakuj wszystkie
for z in kopie/*.zip; do unzip -o "$z" -d photos; done

# konwersja: wysokosc 720, gestosc 96x96 DPI, wynik zawsze JPG
for img in photos/*; do
  name="$(basename "${img%.*}")"
  magick "$img" -units PixelsPerInch -density 96x96 -resize x720 "gotowe/${name}.jpg"
done

# spakuj przetworzone zdjecia do jednego archiwum
( cd gotowe && zip -r ../zdjecia-gotowe.zip ./*.jpg )
echo "Gotowe: zdjecia-gotowe.zip ($(ls gotowe | wc -l) zdjec)."
