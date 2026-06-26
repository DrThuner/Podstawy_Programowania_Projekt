# Zadanie 4 — Dodawanie poprawek

## Cel
Porównać `lista.txt` z `lista-pop.txt`, przygotować łatkę (`patch`) aktualizującą
listę oryginalną oraz potwierdzić poprawność sumą kontrolną MD5.

## Uruchomienie
```bash
./rozwiazanie.sh lista.txt lista-pop.txt
```

## Jak nałożyć łatkę ręcznie
1. Umieść `lista.patch` w katalogu z plikiem `lista.txt`.
2. Wykonaj: `patch lista.txt < lista.patch`
3. Sprawdź: `md5sum lista.txt lista-pop.txt` — sumy muszą być identyczne.

## Wynik
Obie sumy MD5 są zgodne: `58d760bc5db9f4898308ee76619fa0fe`.

W repozytorium dołączono gotowy plik **`lista.patch`**.
