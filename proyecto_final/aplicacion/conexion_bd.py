import mysql.connector

HOST = "localhost"
USER = "root"
PASSWORD = "vicki1996"
BD = "stockagranel"

# Conectarse a la base de datos
conn = mysql.connector.connect(
    host=HOST,
    user=USER,
    password=PASSWORD,
    database=BD
)

# Crear un cursor
cursor = conn.cursor()

def cerrarConexion():
    cursor.close()
    conn.close()