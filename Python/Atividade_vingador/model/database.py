import mysql.connector
from mysql.connector import Error

class database:
    def __init__(self):
        self.host = 'localhost'
        self.database = 'vingadores'
        self.user = 'root'
        self.password = 'admin'

    def connect(self):
        try:
            self.connection = mysql.connector.connect(
                host=self.host, 
                database=self.database, 
                user=self.user, 
                password=self.password
                )
            self.cursor = self.connection.cursor()
            print("Conexão bem sucedida!")
        except Error as e:
            print(f"Erros: {e}")

database().connect()
# db = database.connect()
# db.connect()