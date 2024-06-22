#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2 – semestr letni 2020/2021

# Zadanie 2.
# Zweryfikować istnienie i zawartość pliku `drugi` z katalogu `ddd`.
# Plik powinien zawierać napis `Ala ma kota.`. Jeśli czegoś brakuje
# to odpowiedni plik stworzyć lub nadpisać istniejący.

if [ -e ddd/drugi ]; then
    echo "plik istnieje"
    tekst=$(cat ddd/drugi)
    if [ "$tekst" = "Ala ma kota." ]; then
        echo "tekst istnieje"
    else
        echo "tekst nie istnial - tworze"
        echo "Ala ma kota." > ddd/drugi
    fi
else 
    echo "plik nie istnial - tworze razem z tekstem"
    echo "Ala ma kota." > ddd/drugi
fi



