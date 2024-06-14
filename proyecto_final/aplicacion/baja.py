from conexion_bd import cursor, conn
from mostrar_tablas import mostrar_productos_granel_disponibles, mostrar_productos_fraccionados_disponibles, mostrar_proveedores

def baja():

    salir = False
    while not salir:
        print('Ingresa la opción que desea dar de BAJA:')
        print('1 - PRODUCTOS')
        print('2 - PRESENTACIÓN')
        print('3 - PROVEEDOR')
        print('4 - SALIR')
        
        alternativa2 = int(input('Ingrese una opción: '))

        if alternativa2 == 1:
            mostrar_productos_granel_disponibles()
            baja_producto()
            print('\nPRODUCTO dado de BAJA con éxito.\n')
        elif alternativa2 == 2:
            mostrar_productos_fraccionados_disponibles()
            baja_presentacion()
            print('\nPRESENTACIÓN dada de BAJA con éxito.\n')
        elif alternativa2 == 3:
            mostrar_proveedores()
            baja_proveedor()
            print('\nPROVEEDOR dado de BAJA con éxito.\n')
        elif alternativa2 == 4:
            print('Saliendo de la opción de BAJA...')
            salir = True
        else:
            print('\nOpción incorrecta\n')


def baja_producto():
    query = "DELETE FROM productosgranel WHERE idproductogranel = %s"
    id = int(input('Ingresa el ID del producto a GRANEL que queres dar de BAJA: '))
    values = (id,)
    cursor.execute(query, values)
    conn.commit() 

def baja_presentacion():
    query = "DELETE FROM presentaciones WHERE idproductofracc = %s"
    id = int(input('Ingresa el ID del producto FRACCIONADO que queres dar de BAJA: '))
    values = (id,)
    cursor.execute(query, values)
    conn.commit() 
    
def baja_proveedor():
    CUIT = input('Ingresa el CUIT del proveedor que queres dar de BAJA: ')
    query = "DELETE FROM proveedores WHERE CUIT = %s"
    values = (CUIT,)
    cursor.execute(query, values)
    conn.commit() 