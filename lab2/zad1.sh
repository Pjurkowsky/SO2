#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2 – semestr letni 2020/2021
#
# Zadanie 1.
# Sprawdzić, czy w katalogu `ddd` istnieje plik o nazwie `pierwszy`,
# a jeśli nie, to go utworzyć. Zawartość pliku nie ma znaczenia.


if [ -e ddd/pierwszy ]; then
    echo "istnieje"
else
    echo "nie istnial - tworze"
    touch ddd/pierwszy
fi


