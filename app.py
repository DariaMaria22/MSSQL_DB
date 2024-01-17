import sys
import matplotlib.pyplot as plt
from connection import *
from PyQt6.QtWidgets import QApplication, QMainWindow, QComboBox, QPushButton, QTableWidget, QTableWidgetItem, QLabel
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Dealership DB")
        self.setFixedSize(250, 170)
        self.show()

    def on_button_clicked(self,combo, db):
        # match case based on the selected option
        match combo.currentIndex():
            case 0:
                data = db.execProc("sales_by_year")
                years = []
                sales = []
                for i in range(len(data)):
                    years.append(int(data[i].year))
                    sales.append(float(data[i].amount))
                # NORMAL CHART
                plt.plot(years, sales)
                print(years)
                print(sales)
                plt.style.use('ggplot')
                plt.plot(years, sales, color='green', marker='o', linestyle='solid')
                plt.title("Vanzari anuale")
                plt.xlabel("An")
                plt.ylabel("Vanzari")
                plt.show()


            case 1:
                data = db.execProc("sales_by_country")
                countries = []
                sales = []
                for i in range(len(data)):
                    countries.append(data[i].country)
                    sales.append(data[i].amount)
                # PIE CHART
                plt.pie(sales, labels = countries, autopct='%1.1f%%')
                plt.title("Vanzari in fiecare tara")
                plt.show()

            case 2:
                data = db.execProc("sales_by_dealer")
                dealers = []
                sales = []
                for i in range(len(data)):
                    dealers.append(data[i].name)
                    sales.append(data[i].amount)
                # BAR CHART
                plt.bar(dealers, sales)
                plt.title("Vanzari in fiecare tara")
                plt.ylabel("Vanzari")
                plt.show()

            case _:
                print("Invalid option")

        
def main():
    db = MSSQLConnection(host, port, database, username, password)
    db.openConnection()
    
    # GUI stuff
    app = QApplication(sys.argv)
    window = MainWindow()
    options = ['Vanzari anuale',
            'Vanzari in fiecare tara',
            'Top dealeri']
    
    # Drop down menu
    combo = QComboBox(window)
    combo.addItems(options)
    combo.move(50, 50)
    combo.resize(150, 30)
    combo.show()

    # label for the drop down menu
    label = QLabel(window)
    label.setText("Selecteaza Interogarea:")
    label.move(50, 20)
    label.resize(150, 30)
    label.show()

    # Button for executing queries
    button = QPushButton(window)
    button.setText("Execute")
    button.resize(150, 30)
    button.move(50, 100)
    button.show()
    button.clicked.connect(lambda: window.on_button_clicked(combo, db))

    app.exec()
    db.closeConnection()

if __name__ == "__main__":
    main()
