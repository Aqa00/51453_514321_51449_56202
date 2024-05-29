import gi
import json
import mysql.connector
from mysql.connector import Error

# Wymaganie odpowiednich wersji bibliotek GTK i Pango
gi.require_version('Gtk', '3.0')
gi.require_version('Pango', '1.0')
from gi.repository import Gtk, Pango

# Definicja klasy głównego okna aplikacji
class MealTypeWindow(Gtk.Window):

    def __init__(self):
        # Inicjalizacja okna z tytułem
        Gtk.Window.__init__(self, title="Program do przepisów")
        self.set_border_width(10)
        self.set_default_size(1897, 927)  # Ustawienie początkowej rozdzielczości okna

        # Ustawienie siatki jako głównego kontenera
        self.grid = Gtk.Grid()
        self.grid.set_column_spacing(10)
        self.grid.set_row_spacing(10)
        self.add(self.grid)

        # Utworzenie ekranu powitalnego
        self.create_welcome_screen()

    def create_welcome_screen(self):
        # Wyczyść siatkę z wcześniejszych widżetów
        self.clear_grid()

        # Pasek nawigacyjny
        self.header_bar = Gtk.HeaderBar()
        self.header_bar.set_show_close_button(True)
        self.header_bar.props.title = "Wyszukiwarka przepisów"
        self.set_titlebar(self.header_bar)

        # Pole do wpisywania tekstu wyszukiwania
        self.search_entry = Gtk.Entry()
        self.search_entry.set_placeholder_text("Szukaj składników...")
        self.search_entry.connect("activate", self.on_search_activate)  # Enter działa jak kliknięcie przycisku
        self.header_bar.pack_start(self.search_entry)

        # Przycisk wyszukiwania
        self.search_button = Gtk.Button(label="Znajdź przepis")
        self.search_button.connect("clicked", self.on_search_button_clicked)
        self.header_bar.pack_end(self.search_button)

        # Boczne menu z typami posiłków i kuchniami świata
        self.side_box = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.grid.attach(self.side_box, 0, 1, 1, 2)

        # Typ dania
        self.side_box.pack_start(Gtk.Label(label="TYP DANIA"), False, False, 0)
        self.meal_combo = Gtk.ComboBoxText()
        self.meal_combo.insert(0, "0", "Śniadanie")
        self.meal_combo.insert(1, "1", "Obiad")
        self.meal_combo.insert(2, "2", "Kolacja")
        self.side_box.pack_start(self.meal_combo, False, False, 0)

        # Kuchnia świata
        self.side_box.pack_start(Gtk.Label(label="KUCHNIA ŚWIATA"), False, False, 0)
        self.world_cuisine_check_buttons = []
        for cuisine in ["Amerykańska", "Azjatycka", "Grecka", "Polska", "Włoska", "Meksykańska"]:
            check_button = Gtk.CheckButton(label=cuisine)
            self.side_box.pack_start(check_button, False, False, 0)
            self.world_cuisine_check_buttons.append(check_button)

        # Sekcja wyników wyszukiwania
        self.results_label = Gtk.Label(label="Znaleziono 0 przepisów")
        self.grid.attach(self.results_label, 1, 0, 3, 1)

        # Sekcja z wynikami w postaci flowbox
        self.flowbox = Gtk.FlowBox()
        self.flowbox.set_max_children_per_line(3)
        self.flowbox.set_selection_mode(Gtk.SelectionMode.NONE)
        self.scrolled_window = Gtk.ScrolledWindow()
        self.scrolled_window.set_vexpand(True)
        self.scrolled_window.set_hexpand(True)
        self.scrolled_window.add(self.flowbox)
        self.grid.attach(self.scrolled_window, 1, 1, 3, 2)

        # Ładowanie tagów z bazy danych
        self.load_tags()

        # Wyświetlenie wszystkich widżetów
        self.show_all()

    def load_tags(self):
        try:
            # Odczyt konfiguracji z pliku JSON
            with open('config.json') as config_file:
                config = json.load(config_file)

            # Połączenie z bazą danych
            mydb = mysql.connector.connect(
                host=config['db_host'],
                user=config['db_user'],
                password=config['db_password'],
                database=config['db_name']
            )

            mycursor = mydb.cursor()
            # Zapytanie SQL, które pobiera unikalne tagi z różnych tabel
            query = "SELECT DISTINCT Tagi FROM (SELECT Tagi FROM sniadania UNION ALL SELECT Tagi FROM obiady UNION ALL SELECT Tagi FROM kolacje) as all_tags"
            mycursor.execute(query)

            result = mycursor.fetchall()
            tags = set()
            for row in result:
                for tag in row[0].split(','):
                    words = tag.strip().split()
                    tags.update(words)

            # Tworzenie przycisków dla każdego tagu
            for tag in tags:
                button = Gtk.Button(label=tag.strip())
                button.connect("clicked", self.on_tag_button_clicked)
                self.flowbox.add(button)

        except Error as e:
            self.display_error_message(str(e))
        finally:
            # Zamknięcie połączenia z bazą danych
            if mydb.is_connected():
                mydb.close()

    def create_recipe_screen(self, recipes):
        # Wyczyść siatkę z wcześniejszych widżetów
        self.clear_grid()

        # Przycisk powrotu do ekranu głównego
        self.back_button = Gtk.Button(label="Powrót")
        self.back_button.connect("clicked", self.on_back_button_clicked)
        self.grid.attach(self.back_button, 0, 0, 1, 1)

        # Etykieta z wynikami wyszukiwania
        self.results_label = Gtk.Label(label=f"Znaleziono {len(recipes)} przepisów")
        self.grid.attach(self.results_label, 1, 0, 3, 1)

        # Flowbox do wyświetlania przepisów
        self.flowbox = Gtk.FlowBox()
        self.flowbox.set_max_children_per_line(3)
        self.flowbox.set_selection_mode(Gtk.SelectionMode.NONE)
        self.scrolled_window = Gtk.ScrolledWindow()
        self.scrolled_window.set_vexpand(True)
        self.scrolled_window.set_hexpand(True)
        self.scrolled_window.add(self.flowbox)
        self.grid.attach(self.scrolled_window, 0, 1, 3, 1)

        # Dodanie przepisów do flowbox
        for recipe in recipes:
            recipe_box = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=5)

            name_label = Gtk.Label()
            name_label.set_markup(f"<b>{recipe[1]}</b>")
            name_label.set_xalign(0)

            time_label = Gtk.Label()
            time_label.set_markup(f"<b>Czas przygotowania:</b> {recipe[2]}")
            time_label.set_xalign(0)
            time_label.set_line_wrap(True)

            ingredients_label = Gtk.Label()
            ingredients_label.set_markup(f"<b>Składniki:</b> {recipe[3]}")
            ingredients_label.set_xalign(0)
            ingredients_label.set_line_wrap(True)

            steps_label = Gtk.Label()
            steps_text = self.format_steps(recipe[4])
            steps_label.set_markup(f"<b>Sposób przygotowania:</b>\n{steps_text}")
            steps_label.set_xalign(0)
            steps_label.set_line_wrap(True)

            recipe_box.pack_start(name_label, False, False, 0)
            recipe_box.pack_start(time_label, False, False, 0)
            recipe_box.pack_start(ingredients_label, False, False, 0)
            recipe_box.pack_start(steps_label, False, False, 0)

            self.flowbox.add(recipe_box)

        # Ustawienie rozmiaru okna przy przejściu do ekranu z przepisami
        self.set_default_size(1897, 927)

        # Wyświetlenie wszystkich widżetów
        self.show_all()

    def format_steps(self, steps_text):
        # Formatowanie kroków przepisu
        steps = steps_text.split('. ')
        formatted_steps = '\n'.join([f"- {step.strip()}" for step in steps if step.strip()])
        return formatted_steps

    def on_meal_combo_changed(self, combo):
        # Obsługa zmiany wybranego typu posiłku
        selected_index = combo.get_active()
        if selected_index is not None:
            self.search_entry.set_sensitive(True)
            selected_text = combo.get_active_text()
            print("Wybrany rodzaj posiłku:", selected_text)

    def on_search_activate(self, entry):
        # Obsługa aktywacji pola wyszukiwania
        self.search_recipes()

    def on_search_button_clicked(self, button):
        # Obsługa kliknięcia przycisku wyszukiwania
        self.search_recipes()

    def on_tag_button_clicked(self, button):
        # Obsługa kliknięcia przycisku tagu
        tag_text = button.get_label()
        self.search_entry.set_text(tag_text)
        self.search_recipes()

    def search_recipes(self):
        # Wyszukiwanie przepisów na podstawie wpisanego tekstu i wybranego typu posiłku
        search_text = self.search_entry.get_text()
        selected_meal = self.meal_combo.get_active_text()

        if not selected_meal:
            self.display_no_meal_selected_message()
            return

        table_name = self.get_table_name(selected_meal)

        if table_name:
            self.fetch_and_display_recipes(table_name, search_text)

    def get_table_name(self, meal_type):
        # Mapowanie typu posiłku na nazwę tabeli w bazie danych
        meal_table_mapping = {
            "Śniadanie": "sniadania",
            "Obiad": "obiady",
            "Kolacja": "kolacje"
        }
        return meal_table_mapping.get(meal_type)

    def fetch_and_display_recipes(self, table_name, search_text):
        try:
            # Odczyt konfiguracji z pliku JSON
            with open('config.json') as config_file:
                config = json.load(config_file)

            # Połączenie z bazą danych
            mydb = mysql.connector.connect(
                host=config['db_host'],
                user=config['db_user'],
                password=config['db_password'],
                database=config['db_name']
            )

            mycursor = mydb.cursor()
            # Zapytanie SQL do wyszukiwania przepisów
            query = f"""
                SELECT Id_posilku, Nazwa, Czas_przygotowania, Skladniki, Sposob_przygotowania, Tagi 
                FROM {table_name} 
                WHERE 
                    Nazwa LIKE %s OR 
                    Czas_przygotowania LIKE %s OR 
                    Skladniki LIKE %s OR 
                    Sposob_przygotowania LIKE %s OR 
                    Tagi LIKE %s
            """
            search_term = f"%{search_text}%"
            mycursor.execute(query, (search_term, search_term, search_term, search_term, search_term))
            result = mycursor.fetchall()

            if result:
                formatted_recipes = [(row[0], row[1], row[2], row[3], row[4], row[5]) for row in result]
                self.create_recipe_screen(formatted_recipes)
            else:
                self.display_no_results_message()

        except Error as e:
            self.display_error_message(str(e))
        finally:
            # Zamknięcie połączenia z bazą danych
            if mydb.is_connected():
                mydb.close()

    def display_no_results_message(self):
        # Wyświetlenie komunikatu o braku wyników
        self.results_label.set_text("Znaleziono 0 przepisów")
        dialog = Gtk.MessageDialog(
            parent=self,
            flags=0,
            message_type=Gtk.MessageType.INFO,
            buttons=Gtk.ButtonsType.OK,
            text="Brak wyników"
        )
        dialog.format_secondary_text("Nie znaleziono żadnych przepisów spełniających kryteria wyszukiwania.")
        dialog.run()
        dialog.destroy()

    def display_no_meal_selected_message(self):
        # Wyświetlenie komunikatu o braku wybranego typu posiłku
        dialog = Gtk.MessageDialog(
            parent=self,
            flags=0,
            message_type=Gtk.MessageType.WARNING,
            buttons=Gtk.ButtonsType.OK,
            text="Brak wyboru"
        )
        dialog.format_secondary_text("Proszę wybrać typ dania przed wyszukiwaniem.")
        dialog.run()
        dialog.destroy()

    def display_error_message(self, error_message):
        # Wyświetlenie komunikatu o błędzie
        dialog = Gtk.MessageDialog(
            parent=self,
            flags=0,
            message_type=Gtk.MessageType.ERROR,
            buttons=Gtk.ButtonsType.OK,
            text="Error"
        )
        dialog.format_secondary_text(error_message)
        dialog.run()
        dialog.destroy()

    def on_back_button_clicked(self, button):
        # Obsługa kliknięcia przycisku powrotu
        self.create_welcome_screen()

    def clear_grid(self):
        # Usunięcie wszystkich widżetów z siatki
        self.grid.foreach(lambda widget: self.grid.remove(widget))

# Utworzenie i uruchomienie głównego okna aplikacji
win = MealTypeWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
