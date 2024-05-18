import gi
import mysql.connector

gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

class MealTypeWindow(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Program do przepisów")
        self.set_border_width(10)

        grid = Gtk.Grid()
        grid.set_column_spacing(10)
        grid.set_row_spacing(10)
        self.add(grid)

        self.welcome_label = Gtk.Label(label="Witaj")
        grid.attach(self.welcome_label, 0, 0, 3, 1)

        self.meal_label = Gtk.Label(label="Wybierz rodzaj posiłku:")
        grid.attach(self.meal_label, 0, 1, 1, 1)

        self.meal_combo = Gtk.ComboBoxText() # tworzy rozwijaną listę
        self.meal_combo.insert(0, "0", "Śniadanie")
        self.meal_combo.insert(1, "1", "Obiad")
        self.meal_combo.insert(2, "2", "Kolacja")
        grid.attach(self.meal_combo, 1, 1, 2, 1) # Dołącza rozwijaną listę do siatki w kolumnie 1, wierszu 1, zajmując 2 kolumny i 1 wiersz.

        self.search_entry = Gtk.Entry() # Tworzy pole tekstowe
        self.search_entry.set_placeholder_text("Wyszukaj przepis:") # Ustawia tekst w polu do wpisywania
        grid.attach(self.search_entry, 0, 2, 3, 1)

        self.search_entry.set_sensitive(False)  # Pole wyszukiwania jest nieaktywne do momentu wyboru rodzaju posiłku

        self.meal_combo.connect("changed", self.on_meal_combo_changed) # Łączy zdarzenie zmiany wyboru w rozwijanej liście ("changed") z metodą on_meal_combo_changed.


    def on_meal_combo_changed(self, combo): # Definiuje metodę wywoływaną po zmianie wyboru w rozwijanej liście.
        selected_index = combo.get_active() # Pobiera indeks zaznaczonej opcji w rozwijanej liście.
        if selected_index is not None: # Sprawdza, czy jakaś opcja została wybrana.
            self.search_entry.set_sensitive(True) # Ustawia pole wyszukiwania jako aktywne (edytowalne).
            selected_text = combo.get_active_text() # Pobiera tekst zaznaczonej opcji w rozwijanej liście.
            print("Wybrany rodzaj posiłku:", selected_text) # Wyświetla wybrany rodzaj posiłku w konsoli.

            # Pobierz wprowadzony tekst z pola wyszukiwania
            search_text = self.search_entry.get_text()
            import mysql.connector

            # Ustanowienie połączenia z bazą danych
            mydb = mysql.connector.connect(
                host="localhost",
                user="root",
                password="sheet-blinks-ungraded",
                database="przepisy"
            )

            # Tworzenie kursora
            mycursor = mydb.cursor()

            # Wykonanie zapytania SQL
            mycursor.execute("SELECT * FROM kolacje")

            # Pobranie wyników zapytania
            result = mycursor.fetchall()

            # Wyświetlenie wyników
            for row in result:
                print(row)

            # Zamknięcie połączenia
            mydb.close()


win = MealTypeWindow() # Tworzy obiekt klasy MealTypeWindow.
win.connect("destroy", Gtk.main_quit) # Łączy zdarzenie zniszczenia okna z funkcją Gtk.main_quit, która zamyka aplikację.
win.show_all()  # Wyświetla wszystkie elementy interfejsu użytkownika.
Gtk.main() # Uruchamia główną pętlę GTK+, obsługującą interakcje użytkownika.
