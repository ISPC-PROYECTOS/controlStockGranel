from conexion_bd import cursor, conn
from mostrar_tablas import mostrar_productos_granel_disponibles, mostrar_productos_fraccionados_disponibles

def actualizar_stock():
    salir = False  
    while not salir: 
        print("Ingrese la opción de STOCK que desea ACTUALIZAR: ")
        print("1 - GRANEL")
        print("2 - FRACCIONADO")
        print("3 - SALIR")
        
        tipo_stock2 = int(input("Ingrese una opción: "))

        if tipo_stock2 == 1:
            mostrar_productos_granel_disponibles()
            actualizar_granel()
            print("\nActualización STOCK GRANEL realizada con éxito.\n")
        elif tipo_stock2 == 2:
            mostrar_productos_fraccionados_disponibles()
            actualizar_fraccionado()
            print("\nActualización STOCK FRACCIONADO realizada con éxito.\n")
        elif tipo_stock2 == 3:
            print("Saliendo de la opción ACTUALIZACIÓN de STOCK...")
            salir = True  
        else:
            print("\nOpción incorrecta\n")

#esta función actualiza la cantidad de un producto a granel
def actualizar_granel():
    id = int(input('Ingresa el ID: '))
    cantidad = int(input('Ingresa la cantidad: '))
    query = " UPDATE productosgranel SET cantidad = cantidad + %s WHERE idproductogranel = %s"
    values = (cantidad, id)
    cursor.execute(query, values)
    conn.commit()
#esta función actualiza la cantidad de un producto fraccionado
def actualizar_fraccionado():
    id = int(input('Ingresa el ID: '))
    cantidad = int(input('Ingresa la cantidad: '))
    query = " UPDATE presentaciones SET cantidad = cantidad + %s WHERE idproductofracc = %s"
    values = (cantidad, id)
    cursor.execute(query, values)
    conn.commit()