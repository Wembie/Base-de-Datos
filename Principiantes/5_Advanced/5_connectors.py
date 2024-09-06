import psycopg2

def print_user( user ):

    config = {
        "host": "localhost",
        "port": "5432",
        "dbname": "prueba",  # En PostgreSQL se usa 'dbname' en lugar de 'database'
        "user": "postgres",          # Cambia el usuario según tu configuración
        "password": "123"    # Cambia la contraseña según tu configuración
    }

    # Conectar a la base de datos
    connection = psycopg2.connect( **config )
    cursor = connection.cursor()

    # Consulta preparada
    query = "SELECT * FROM users WHERE name = %s;"
    print( query )
    cursor.execute( query, ( user, ) )
    
    # Obtener todos los resultados
    result = cursor.fetchall()

    # Imprimir los resultados
    for row in result:
        print( row )

    # Cerrar cursor y conexión
    cursor.close()
    connection.close()

# Llamar a la función
print_user( "Juan" )

# print_user("'; UPDATE users SET age = '15' WHERE user_id = 1; --")