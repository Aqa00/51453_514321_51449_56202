Wymagane zależności:
    python3
    python3-gi
    python3-mysql.connector
Instrukcja uruchomienia:
1. Pobierz wszystkie pliki.
2. Przenieś pobrane pliki do katalogu domowego /Home/user/przepisy
3. Utwórz plik najlepiej na pulpicie przepisy.desktop
4. Wewnątrz pliku dodaj:
[Desktop Entry]
Version=1.0
Name=Przepisy
Comment=Program do przepisów
Exec=python3 /home/user/przepisy/project_przepisy.py
Icon=/home/user/recipes.svg
Terminal=false
Type=Application
Categories=Utility;
5. Zmień uprawnienia plików
   chmod +x /home/user/przepisy/project_przepisy.py
   chmod +x ~/Desktop/przepisy.desktop
6. Uruchom program, klikając w ikonę.

Instrukcja użytkowania aplikacji Przepisy:
1. Na ekranie startowym wyświetla się menu z wyszukiwarką przepisów. Aby wyszukać przepis, w pierwszej kolejności użytkownik musi wybrać rodzaj posiłku spośród trzech dostępnych opcji na liście rozwijanej.
2. W celu wyszukiwania przepisu użytkownik może wcisnąć klawisz Enter po wybraniu rodzaju posiłku lub użyć do tego dedykowanego przycisku "Wyszukaj przepis", który znajduje się po prawej stronie pola z wyborem rodzaju posiłku.
3. Użytkownik może również zawęzić obszar wyszukiwanych przepisów, poprzez skorzystanie z listy dostępnych poniżej hasztagów (użytkownik ma możliwość wybrania tylko jednego hasztagu).
4. Po wybraniu odpowiedniego hasztagu aplikacja automatycznie wyszuka dedykowany przepis zawierający odpowiednie tagowanie.

Aplikacja ma podpiętą bazę danych, która w tym momencie nie może być aktualizowana przez użytkownika (nie mogą być dodawane nowe przepisy).

