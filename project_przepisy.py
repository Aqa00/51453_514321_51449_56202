import gi
import time
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

class MealTypeWindow(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Recipe Finder")
        self.set_border_width(10)

        grid = Gtk.Grid()
        grid.set_column_spacing(10)
        grid.set_row_spacing(10)
        self.add(grid)

        self.welcome_label = Gtk.Label(label="Witaj")
        grid.attach(self.welcome_label, 0, 0, 3, 1)

        self.meal_label = Gtk.Label(label="Wybierz rodzaj posiłku:")
        grid.attach(self.meal_label, 0, 1, 1, 1)

        self.meal_combo = Gtk.ComboBoxText()
        self.meal_combo.insert(0, "0", "Śniadanie")
        self.meal_combo.insert(1, "1", "Obiad")
        self.meal_combo.insert(2, "2", "Kolacja")
        grid.attach(self.meal_combo, 1, 1, 2, 1)

        self.search_entry = Gtk.Entry()
        self.search_entry.set_placeholder_text("Wyszukaj przepis")
        grid.attach(self.search_entry, 0, 2, 3, 1)

        self.search_entry.set_sensitive(False)  # Pole wyszukiwania jest nieaktywne do momentu wyboru rodzaju posiłku

        self.meal_combo.connect("changed", self.on_meal_combo_changed)

    def on_meal_combo_changed(self, combo):
        selected_index = combo.get_active()
        if selected_index is not None:
            self.search_entry.set_sensitive(True)
            selected_text = combo.get_active_text()
            print("Wybrany rodzaj posiłku:", selected_text)

            # Symulacja połączenia z bazą danych (możesz zastąpić rzeczywistym kodem łączącym się z bazą danych)
            time.sleep(2)  # Symulacja opóźnienia związanej z połączeniem z bazą danych

            # Połączenie z bazą danych zostało zakończone, pole wyszukiwania staje się aktywne
            self.search_entry.set_sensitive(True)

win = MealTypeWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
