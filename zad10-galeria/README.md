# Zadanie 10 — Galeria dla grafika

## Cel
Na podstawie szablonu (`galeria.zip` → `index.html`) zbudować stronę HTML
prezentującą zdjęcia z zadania 7. Powtarzalny blok galerii wstawiany jest
tylekroć, ile jest zdjęć.

## Uruchomienie
```bash
./galeria.sh index.html galeria.html   # wymaga katalogu gotowe/ ze zdjeciami
```

## Jak to działa
- `sed '/<!-- plik 1:/,$d'` — zostawia z szablonu sam nagłówek (style, tytuł).
- pętla `for` + here-document — generuje blok galerii dla każdego zdjęcia.
- na końcu dopisywane jest `<div class="clearfix">` oraz zamknięcie `</body></html>`.

> Plik `galeria.html` umieść w katalogu ze zdjęciami `.jpg`, aby ścieżki działały.
