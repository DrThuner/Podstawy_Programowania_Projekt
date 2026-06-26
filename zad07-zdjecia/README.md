# Zadanie 7 — Fotografik gamoń

## Cel
Rozpakować zdjęcia z `kopie-1.zip` i `kopie-2.zip`, zmienić format (niektóre)
na JPG, ustawić rozdzielczość 96×96 DPI i wysokość 720 px, a całość spakować
do jednego archiwum ZIP.

## Uruchomienie
```bash
./konwersja.sh        # wymaga kopie-1.zip i kopie-2.zip w tym katalogu
```
Wynik: `zdjecia-gotowe.zip` (przetworzone zdjęcia w katalogu `gotowe/`).

## Kluczowe opcje magick
- `-units PixelsPerInch -density 96x96` — zapis 96×96 DPI w metadanych.
- `-resize x720` — skalowanie do wysokości 720 px (proporcjonalnie).
- rozszerzenie `.jpg` wyniku wymusza konwersję do JPEG (z PNG/TIFF).

> Uwaga: każdy backup `YYYY-MM-DD.zip` zawiera jedno zdjęcie; część plików `.jpg`
> jest w rzeczywistości PNG/TIFF i wymaga faktycznej konwersji.
