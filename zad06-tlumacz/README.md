# Zadanie 6 — Marudny tłumacz

## Cel
1. W pliku `en-7.2.json5` zdublować każdą linię z kluczem, dodając zakomentowaną
   kopię (`//`) → `pl-7.2.json5`.
2. Z nowej wersji `en-7.4.json5` wybrać tylko nowe frazy → `pl-7.4.json5`.

## Uruchomienie
```bash
./dubluj.sh en-7.2.json5 pl-7.2.json5
./nowe-frazy.sh en-7.2.json5 en-7.4.json5 pl-7.4.json5
```

## Jak to działa
- `awk '/"..":/ {print "//"$0; print $0; next} {print}'` — dla linii z kluczem
  wypisuje najpierw zakomentowaną kopię, potem oryginał; pozostałe linie bez zmian.
- `grep -F -x -v -f en-7.2.json5 en-7.4.json5` — zostawia linie z 7.4 nieobecne w 7.2.

## Wynik
`pl-7.2.json5` — 5878 linii; `pl-7.4.json5` — 378 nowych fraz.
