import gi
import json
import mysql.connector
from mysql.connector import Error

gi.require_version('Gtk', '3.0')
gi.require_version('Pango', '1.0')
from gi.repository import Gtk, Pango

class MealTypeWindow(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Program do przepisów")
        self.set_border_width(10)
        self.set_default_size(800, 600)

        self.grid = Gtk.Grid()
        self.grid.set_column_spacing(10)
        self.grid.set_row_spacing(10)
        self.add(self.grid)

        self.create_welcome_screen()

    def create_welcome_screen(self):
        self.clear_grid()

        self.welcome_label = Gtk.Label(label="Witaj")
        self.grid.attach(self.welcome_label, 0, 0, 3, 1)

        self.meal_label = Gtk.Label(label="Wybierz rodzaj posiłku:")
        self.grid.attach(self.meal_label, 0, 1, 1, 1)

        self.meal_combo = Gtk.ComboBoxText()
        self.meal_combo.insert(0, "0", "Śniadanie")
        self.meal_combo.insert(1, "1", "Obiad")
        self.meal_combo.insert(2, "2", "Kolacja")
        self.grid.attach(self.meal_combo, 1, 1, 2, 1)

        self.search_entry = Gtk.Entry()
        self.search_entry.set_placeholder_text("Wyszukaj przepis:")
        self.grid.attach(self.search_entry, 0, 2, 2, 1)

        self.search_button = Gtk.Button(label="Wyszukaj")
        self.search_button.connect("clicked", self.on_search_button_clicked)
        self.grid.attach(self.search_button, 2, 2, 1, 1)

        self.info_label = Gtk.Label(label="Możesz również wyszukać przepis naciskając ENTER")
        self.grid.attach(self.info_label, 0, 3, 3, 1)

        self.search_entry.set_sensitive(False)

        self.meal_combo.connect("changed", self.on_meal_combo_changed)
        self.search_entry.connect("activate", self.on_search_activate)

        self.show_all()

    def create_recipe_screen(self, recipes):
        self.clear_grid()

        self.back_button = Gtk.Button(label="Powrót")
        self.back_button.connect("clicked", self.on_back_button_clicked)
        self.grid.attach(self.back_button, 0, 0, 1, 1)

        self.recipe_list_store = Gtk.ListStore(str, str, str, str, str, str)  # Usunięto pole Id_posilku

        for recipe in recipes:
            self.recipe_list_store.append(recipe[1:])  # Pominięto pierwszy element (Id_posilku)

        self.recipe_tree_view = Gtk.TreeView(model=self.recipe_list_store)
        renderer = Gtk.CellRendererText(wrap_width=1000, wrap_mode=Pango.WrapMode.WORD)
        for i, column_title in enumerate(
                ["Nazwa", "Obraz", "Czas_przygotowania", "Skladniki", "Sposob_przygotowania", "Tagi"]):
            column = Gtk.TreeViewColumn(column_title, renderer, text=i)
            column.set_min_width(100)  # Ustaw szerokość kolumny
            column.set_resizable(True)
            self.recipe_tree_view.append_column(column)

        self.scrolled_window = Gtk.ScrolledWindow()
        self.scrolled_window.set_vexpand(True)
        self.scrolled_window.set_hexpand(True)
        self.scrolled_window.set_min_content_width(600)
        self.scrolled_window.add(self.recipe_tree_view)
        self.grid.attach(self.scrolled_window, 0, 1, 3, 1)

        self.show_all()

    def on_meal_combo_changed(self, combo):
        selected_index = combo.get_active()
        if selected_index is not None:
            self.search_entry.set_sensitive(True)
            selected_text = combo.get_active_text()
            print("Wybrany rodzaj posiłku:", selected_text)

    def on_search_activate(self, entry):
        self.search_recipes()

    def on_search_button_clicked(self, button):
        self.search_recipes()

    def search_recipes(self):
        search_text = self.search_entry.get_text()
        selected_meal = self.meal_combo.get_active_text()
        table_name = self.get_table_name(selected_meal)

        if table_name:
            self.fetch_and_display_recipes(table_name, search_text)

    def get_table_name(self, meal_type):
        meal_table_mapping = {
            "Śniadanie": "sniadania",
            "Obiad": "obiady",
            "Kolacja": "kolacje"
        }
        return meal_table_mapping.get(meal_type)

    def fetch_and_display_recipes(self, table_name, search_text):
        try:
            with open('config.json') as config_file:
                config = json.load(config_file)

            mydb = mysql.connector.connect(
                host=config['db_host'],
                user=config['db_user'],
                password=config['db_password'],
                database=config['db_name']
            )

            mycursor = mydb.cursor()
            query = f"SELECT Id_posilku, Nazwa, Obraz, Czas_przygotowania, Skladniki, Sposob_przygotowania, Tagi FROM {table_name} WHERE nazwa LIKE %s"
            mycursor.execute(query, (f"%{search_text}%",))

            result = mycursor.fetchall()
            if result:
                formatted_recipes = [list(map(str, recipe)) for recipe in
                                     result]  # Konwertuj każdą tuplę na listę ciągów znaków
                self.create_recipe_screen(formatted_recipes)
            else:
                self.display_no_results_message()

        except Error as e:
            self.display_error_message(str(e))
        finally:
            if mydb.is_connected():
                mydb.close()

    def display_no_results_message(self):
        dialog = Gtk.MessageDialog(
            self, 0, Gtk.MessageType.INFO,
            Gtk.ButtonsType.OK, "No results found"
        )
        dialog.format_secondary_text(
            "Nie znaleziono przepisów dla podanego wyszukiwania."
        )
        dialog.run()
        dialog.destroy()

    def display_error_message(self, error_message):
        dialog = Gtk.MessageDialog(
            self, 0, Gtk.MessageType.ERROR,
            Gtk.ButtonsType.OK, "Error"
        )
        dialog.format_secondary_text(error_message)
        dialog.run()
        dialog.destroy()

    def on_back_button_clicked(self, button):
        self.create_welcome_screen()

    def clear_grid(self):
        self.grid.foreach(lambda widget: self.grid.remove(widget))

win = MealTypeWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
