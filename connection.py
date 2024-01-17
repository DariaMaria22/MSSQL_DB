import pyodbc

host = "localhost"
port = "1433"
database = "DealerDB"
username = "daria"
password = "daria"

class MSSQLConnection:
    def __init__(self, host, port, database, username, password):
        self.host = host
        self.port = port
        self.database = database
        self.username = username
        self.password = password

    def openConnection(self):
        try:
            self.db = pyodbc.connect(
                'DRIVER={ODBC Driver 17 for SQL Server};'
                f'SERVER={self.host},{self.port};'
                f'DATABASE={self.database};'
                'UID='+self.username+';'
                'PWD='+self.password+';'
            )
            self.cursor = self.db.cursor()
            print("Connection open!")
        except Exception as e:
            print("Connection not open!")
            print(e)

    def closeConnection(self):
        try:
            self.cursor.close()
            self.db.close()
            print("Connection closed!")
        except Exception as e:
            print("Connection not closed!")
            print(e)

    def execProc(self, proc_name):
        query = "exec " + proc_name
        try:
            self.cursor.execute(query) 
        except Exception as e:
            print(e)
        return self.cursor.fetchall()
    
    def get_cities(self):
        result = []
        data = self.execProc("show_cities")
        for i in range(len(data)):
            result.append(data[i].city)
        return result

