# Zadanie 5 — Z CSV do SQL i z powrotem

## Cel
1. Zamienić dane z `steps-2sql.csv` (separator `;`) na instrukcje `INSERT` SQL.
2. Operacja odwrotna: skrypt SQL (`steps-2csv.sql`) → CSV, ze zmianą stempla
   czasu z milisekund na sekundy (usunięcie trzech ostatnich zer).

## Uruchomienie
```bash
./csv2sql.sh steps-2sql.csv steps.sql     # CSV -> SQL
./sql2csv.sh steps-2csv.sql steps.csv     # SQL -> CSV (ms -> s)
```

## Jak to działa
- `awk -F';'` — pola rozdzielone średnikiem trafiają do nawiasu `VALUES`.
- `sed -E 's/...VALUES \(...\);/\1;\2;\3/'` — wyłuskuje trzy liczby z instrukcji.
- `substr($1,1,length($1)-3)` — odcina trzy zera (milisekundy → sekundy).
