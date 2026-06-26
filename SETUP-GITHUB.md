# Jak wysłać projekt na GitHub

## 1. Konto i git
1. Załóż konto na https://github.com (jedna osoba z zespołu jako właściciel).
2. Zainstaluj git (https://git-scm.com) lub w MSYS2: `pacman -S git`.
3. Ustaw dane podpisujące commity (jednorazowo):
   ```bash
   git config --global user.name  "Imie Nazwisko"
   git config --global user.email "adres@email"
   ```

## 2. Utwórz puste repozytorium na GitHub
Na GitHub: **New repository** → nazwa np. `pp-projekt` → **Create repository**
(bez dodawania README — repozytorium lokalne już je zawiera).

## 3. Powiąż katalog z repozytorium i wyślij
To repozytorium jest już zainicjowane (zawiera katalog `.git` z pierwszym commitem).
Wystarczy dodać zdalny adres i wykonać `push`:
```bash
cd pp-projekt
git remote add origin https://github.com/UZYTKOWNIK/pp-projekt.git
git branch -M main
git push -u origin main
```
> Jeśli wolisz zacząć od zera (bez dołączonej historii), usuń katalog `.git`
> i wykonaj: `git init` → `git add .` → `git commit -m "Pierwszy commit"`,
> a następnie kroki z `git remote add` powyżej.

## 4. Dodanie współpracownika
Właściciel: **Settings → Collaborators** → dodaj drugą osobę z zespołu.

## 5. Codzienna praca
```bash
git pull                 # pobierz zmiany kolegi przed praca
git add .                # dodaj zmiany
git commit -m "Opis zmiany"
git push                 # wyslij na GitHub
```

## 6. Oddanie pracy (wymagane przez prowadzącego)
1. Wyeksportuj sprawozdanie do PDF.
2. Spakuj **klon repozytorium**:
   ```bash
   git clone https://github.com/UZYTKOWNIK/pp-projekt.git pp-projekt-klon
   zip -r pp-projekt-klon.zip pp-projekt-klon
   ```
3. Prześlij prowadzącemu link do repozytorium i do sprawozdania oraz dołącz
   PDF i `pp-projekt-klon.zip`.
