# Podstawy programowania — zadania projektowe

Repozytorium z rozwiązaniami zadań projektowych z przedmiotu *Podstawy programowania*
(prowadzący: dr inż. Sławomir Koczubiej). Zadania polegają na przetwarzaniu
plików tekstowych i graficznych narzędziami kolekcji GNU oraz prostymi skryptami
powłoki **bash**, uruchamianymi w środowisku **MSYS2**.

## Zespół

* *Patryk Grzmil*
* *Filip Norbeciak*

*Kierunek: Inżynieria Danych, I rok, niestacjonarnie*

## Struktura repozytorium

|Katalog|Zadanie|Zawartość|
|-|-|-|
|`zad01-zespol-narzedzia/`|1. Zespoły i narzędzia|README|
|`zad02-msys2/`|2. MSYS2|README (instalacja, pacman)|
|`zad03-niesforne-dane/`|3. Niesforne dane|`rozwiazanie.sh`|
|`zad04-poprawki/`|4. Dodawanie poprawek|`rozwiazanie.sh`, `lista.patch`|
|`zad05-csv-sql/`|5. Z CSV do SQL i z powrotem|`csv2sql.sh`, `sql2csv.sh`|
|`zad06-tlumacz/`|6. Marudny tłumacz|`dubluj.sh`, `nowe-frazy.sh`|
|`zad07-zdjecia/`|7. Fotografik gamoń|`konwersja.sh`|
|`zad08-pdf/`|8. Wszędzie te PDF-y|`portfolio.sh`|
|`zad09-kopie/`|9. Porządki w kopiach zapasowych|`porzadkuj.sh`|
|`zad10-galeria/`|10. Galeria dla grafika|`galeria.sh`|

Każdy katalog zawiera własny `README.md` z opisem rozwiązania i sposobem uruchomienia.
Treść zadań: [`pp-projekt-zadania.pdf`](pp-projekt-zadania.pdf).

## Dane wejściowe

Pliki źródłowe (`dane.zip`, `lista.zip`, `csv.zip`, `tlumacz.zip`, `kopie-1.zip`,
`kopie-2.zip`, `galeria.zip`) pobiera się ze strony z materiałami i umieszcza
w katalogu odpowiedniego zadania. Nie są wersjonowane (patrz `.gitignore`).

## Uruchamianie

```bash
cd zad03-niesforne-dane
./rozwiazanie.sh dane.txt dane-3kolumny.txt
```

Skrypty wymagają środowiska z narzędziami GNU (np. MSYS2 / Linux); zadania 7–8
dodatkowo wymagają ImageMagick (`magick`).

## Jak wysłać na GitHub

Instrukcja krok po kroku: [`SETUP-GITHUB.md`](SETUP-GITHUB.md).

