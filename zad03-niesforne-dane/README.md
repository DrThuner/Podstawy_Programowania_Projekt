# Zadanie 3 — Niesforne dane

## Cel
Zamienić plik `dane.txt` (jedna kolumna liczb, separator dziesiętny — przecinek)
na plik z trzema kolumnami `x y z` i wierszem nagłówkowym, gotowy do importu
w arkuszu kalkulacyjnym.

## Uruchomienie
```bash
./rozwiazanie.sh dane.txt dane-3kolumny.txt
```

## Jak to działa
- `sed 's/\r$//'` — usuwa znak CR (pliki są w konwencji Windows, CRLF).
- `paste -d' ' - - -` — skleja kolejne **trzy** wiersze w jeden (separator: spacja).
- `{ echo "x y z"; cat ...; }` — dopisuje nagłówek na początku pliku.

## Wynik
6281 wierszy danych + nagłówek (razem 6282 wiersze).
