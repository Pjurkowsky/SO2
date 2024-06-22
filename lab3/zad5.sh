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
# Zadanie 5.
# Odnaleźć w katalogu `ccc` wszystkie wiszące dowiązania miękkie – to jest
# takie, które wskazują na elementy nieistniejące w systemie plików.
# Wyświetlić ścieżki wskazywane przez te dowiązania, każdą w osobnej linii.
# Nie wyświetlać nic ponadto!
#

find ccc -type l | while read plik; do
    if [ ! -e ccc/$(readlink "${plik}") ]; then
        echo $(readlink "${plik}")
    fi
done