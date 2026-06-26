# Zadanie 9 — Porządki w kopiach zapasowych

## Cel
Uporządkować kopie `YYYY-MM-DD.zip` (z `kopie-1.zip` i `kopie-2.zip`) w strukturę:
`kopie/rok/miesiąc/plik.zip`.

## Uruchomienie
```bash
./porzadkuj.sh        # wymaga kopie-1.zip i kopie-2.zip w tym katalogu
```

## Jak to działa
- `basename "$f" .zip` — nazwa pliku bez rozszerzenia (np. `2010-05-22`).
- `${base%%-*}` — rok; `cut -d- -f2` — miesiąc.
- `mkdir -p` + `mv` — utworzenie katalogu `rok/miesiąc` i przeniesienie pliku.

## Wynik
Struktura `kopie/2010/05/…`, `kopie/2010/06/…` itd. (270 plików, lata 2010–2024).
