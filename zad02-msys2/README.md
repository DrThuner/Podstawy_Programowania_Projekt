# Zadanie 2 — MSYS2

## Cel
Instalacja i konfiguracja środowiska MSYS2 oraz instalacja pakietów potrzebnych
w dalszych zadaniach.

## Instalacja
1. Pobierz instalator ze strony https://www.msys2.org
2. Zainstaluj na dysku lokalnym (np. `d:\msys64`).
3. Środowiska MSYS2: `msys`, `ucrt64`, `clang64`, `mingw64`
   (domyślnie zalecane: **ucrt64**).

## Aktualizacja i pakiety (menedżer `pacman`)
```bash
# pełna aktualizacja systemu (może wymagać restartu powłoki)
pacman -Syu

# narzędzia wykorzystywane w zadaniach
pacman -S vim nano less diffutils zip unzip dos2unix patch

# ImageMagick dla środowiska ucrt64 (zadania 7 i 8)
pacman -S mingw-w64-ucrt-x86_64-imagemagick
```

## Sprawdzenie zainstalowanych pakietów
```bash
pacman -Q | grep -E "vim|nano|less|diffutils|zip|unzip|dos2unix|patch|imagemagick"
```
