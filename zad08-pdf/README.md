# Zadanie 8 — Wszędzie te PDF-y

## Cel
Z przygotowanych zdjęć (zadanie 7) wygenerować dokument PDF w formacie A4:
8 zdjęć na stronie (2 kolumny × 4 wiersze), z nazwą pliku pod każdym zdjęciem.

## Uruchomienie
```bash
./portfolio.sh        # wymaga katalogu gotowe/ ze zdjeciami z zadania 7
```
Wynik: `portfolio.pdf`.

## Jak to działa (`magick montage`)
- `-label '%f'` — podpis = nazwa pliku.
- `-tile 2x4` — 2 kolumny × 4 wiersze = 8 zdjęć na stronie.
- `-geometry 300x300+10+10` — rozmiar miniatury i odstępy.
- `-page A4` — rozmiar strony; kolejne strony tworzone automatycznie.
