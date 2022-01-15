#!/bin/sh

if [ -f anagrafica-vaccini-summary-latest.pdf ]; then
  rm anagrafica-vaccini-summary-latest.pdf
fi

if [ -f anagrafica-vaccini-summary-latest.csv ]; then
  rm anagrafica-vaccini-summary-latest.csv
fi

if [ -f vaccini-summary-latest.csv ]; then
  rm vaccini-summary-latest.csv
fi

if [ -f vaccini-summary-latest.pdf ]; then
  rm vaccini-summary-latest.pdf
fi

wget -q https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/anagrafica-vaccini-summary-latest.csv
wget -q https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/vaccini-summary-latest.csv

pandoc -V geometry:"paperwidth=320mm, paperheight=210mm, top=2cm, bottom=1.5cm, left=2cm, right=2cm" -o anagrafica-vaccini-summary-latest.pdf anagrafica-vaccini-summary-latest.csv
pandoc -V geometry:"paperwidth=420mm, paperheight=210mm, top=2cm, bottom=1.5cm, left=2cm, right=2cm" -o vaccini-summary-latest.pdf anagrafica-vaccini-summary-latest.csv

xdg-open anagrafica-vaccini-summary-latest.pdf
xdg-open vaccini-summary-latest.pdf

#pandoc -s anagrafica-vaccini-summary-latest.csv   anagrafica-vaccini-summary-latest.csv -o output.pdf
#xdg-open output.pdf


rm anagrafica-vaccini-summary-latest.pdf
rm anagrafica-vaccini-summary-latest.csv
rm vaccini-summary-latest.pdf
rm vaccini-summary-latest.csv

exit 0
