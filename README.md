Wymagane zależności:
    python3
    python3-gi
    python3-mysql.connector
Instrukcja uruchomienia:
1. Pobierz wszystkie pliki.
2. Przenieść pobrane pliki do katalogu domowego /Home/user/przepisy
3. Utwórz plik najlepiej na pulpicie przepisy.desktop
4. wewnątrz pliku dodaj:
[Desktop Entry]
Version=1.0
Name=Przepisy
Comment=Program do przepisów
Exec=python3 /home/user/przepisy/project_przepisy.py
Icon=/home/user/recipes.svg
Terminal=false
Type=Application
Categories=Utility;
5. Zmien uprawnienia plików
   chmod +x /home/user/przepisy/project_przepisy.py
   chmod +x ~/Desktop/przepisy.desktop
6. Uruchom program klikając w ikonę.

Instrukcja użytkowania aplikacji Przepisy
1. Na ekranie startowym wyświetla się menu z wyszukiwarką przepisów.
2. Aby wyszukać przepis, w pierwszej kolejności użytkownik musi wybrać rodzaj posiłku, spośród trzech dostępnych opcji na liście rozwijanej.
3. W celu wyszukiwania przepisu, użytkownik może wcisnąć klawisz Enter po wybraniu rodzaju posiłku lub użyć do tego dedykowanego przycisku "Wyszukaj przepis", który znajduje się po prawej stronie pola z wyborem rodzaju posiłku.
4. Użytkownik może również zawęzić obszar wyszukiwanych przepisów, poprzez skorzystanie z listy dostępnych poniżej hasztagów (użytkownik ma możliwość wybrania tylko jednego hasztagu).
5. Po wybraniu odpowiedniego hasztagu, aplikacja automatycznie wyszuka dedykowany przepis zawierający odpowiednie tagowanie.

Aplikacja ma podpiętą bazę danych, która na tym momencie nie może być aktualizowana przez użytkownika (nie mogą być dodawane nowe przepisy).

