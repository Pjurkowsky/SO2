#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3 – semestr letni 2020/2021
#
# Celem zajęć jest pogłębienie wiedzy na temat struktury systemu plików,
# poruszania się po katalogach i kontroli uprawnień w skryptach powłoki.
#
# Przygotowane rozwiązania nie muszą być całkowicie uniwersalne. Zakładamy,
# że ogólna struktura katalogów się nie zmienia (nie będzie już więcej/mniej
# poziomów podkatalogów), jednakże same nazwy i zawartości plików (o ile
# nie są podane wprost w treści zadań) mogą być dowolne i ulegać zmianie,
# a przygotowane rozwiązania nadal powinny działać.
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 9.
# Wyszukać w katalogu `ccc` wszystkie dowiązania, które wskazują na konkretną
# podaną ścieżkę – pierwszy i jedyny argument skryptu. Wyświetlić nazwy tych
# pasujących dowiązań (tylko same nazwy plików dowiązań), każdą nazwę w nowej
# linii. Nie interesuje nas, czy te dowiązania są poprawne (czyli czy istnieje
# jakiś element pod wskazywaną ścieżką). Nie wyświetlać nic ponadto!
# Zakończyć skrypt z błędem (komenda: exit 1) jeśli nie podano argumentu.
#
# Przykład uruchomienia: ./zad9.sh '../aaa/echo'
#

if [ -z "$1"  ]; then
    echo "Błąd należy podać dokładnie jeden argument"
    exit 1
fi

find ccc -type l | while read file; do
    if [ "$1" == $(readlink "${file}") ]; then
        echo $(basename "${file}")
    fi
done
