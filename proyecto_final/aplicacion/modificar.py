from conexion_bd import cursor, conn
from mostrar_tablas import mostrar_productos_granel_disponibles, mostrar_productos_fraccionados_disponibles, mostrar_categorias, mostrar_proveedores

def modificar():
    salir = False  
    while not salir: 
        print("Ingresa la opción que desea MODIFICAR:")
        print("1 - PRODUCTOS")
        print("2 - PRESENTACION")
        print("3 - PROVEEDOR")
        print("4 - SALIR")
        
        modificar = int(input("Ingrese una opción: "))

        if modificar == 1:
            print('PRODUCTOS A GRANEL DISPONIBLES: ')
            mostrar_productos_granel_disponibles()
            print('\nCATEGORÍAS: \n')
            mostrar_categorias()
            print('')
            modificar_producto()
            print("PRODUCTO a GRANEL fue MODIFICADO con éxito.\n")
        elif modificar == 2:
            print('PRODUCTOS FRACCIONADOS DISPONIBLES: ')
            mostrar_productos_fraccionados_disponibles()
            print('')
            modificar_presentacion()
            print("\nPRODUCTO FRACCCIONADO fue MODIFICADO con éxito.\n")
        elif modificar == 3:
            mostrar_proveedores()
            modificar_proveedor()
            print("\nEl PROVEEDOR fue MODIFICADO con éxito.\n")
        elif modificar == 4:
            print('\nSaliendo de la opción MODIFICAR...\n')
            salir = True 

        else:
            print("\nOpción incorrecta\n")


def modificar_producto():
    id = int(input('Ingresa el ID del producto a GRANEL que necesitas MODIFICAR: '))
    descripcion = input('Ingresa la nueva descripción: ').upper()
    cantidad = int(input('Ingresa la nueva cantidad: '))
    tamano = int(input('Ingresa el nuevo tamaño: '))
    unidad_medida = input('Ingresa la nueva unidad de medida: ').lower()
    cantidad_max = int(input('Ingresa la nueva cantidad máxima: '))
    cantidad_min = int(input('Ingresa la nueva cantidad mínima: '))
    id_categoria = int(input('Ingresa el nuevo ID de categoría: '))
    query = "UPDATE productosgranel SET descripcion = %s, cantidad = %s, tamano = %s,  unidadmedida = %s, cantidadmax = %s, cantidadmin = %s, idcategoria = %s WHERE idproductogranel = %s"
    values = (descripcion, cantidad, tamano, unidad_medida, cantidad_max, cantidad_min, id_categoria, id,)
    cursor.execute(query, values)
    conn.commit()


def modificar_presentacion():
    id = int(input('Ingresa el ID del producto FRACCIONADO que necesitas MODIFICAR: '))
    descripcion = input('Ingresa la nueva descripción: ').upper()
    cantidad = int(input('Ingresa la nueva cantidad: '))
    tamano = int(input('Ingresa el nuevo tamaño: '))
    unidad_medida = input('Ingresa la nueva unidad de medida: ').lower()
    cantidad_max = int(input('Ingresa la nueva cantidad máxima: '))
    cantidad_min = int(input('Ingresa la nueva cantidad mínima: '))
    query = "UPDATE presentaciones SET descripcion = %s, cantidad = %s, tamano = %s,  unidadmedida = %s, cantidadmax = %s, cantidadmin = %s WHERE idproductofracc = %s"
    values = (descripcion, cantidad, tamano, unidad_medida, cantidad_max, cantidad_min, id,)
    cursor.execute(query, values)
    conn.commit()

def modificar_proveedor():
    CUIT_buscar = input('Ingresa el CUIT del PROVEEDOR que necesitas MODIFICAR: ')
    CUIT = input('Ingresa el nuevo CUIT: ')
    proveedor = input('Ingresa el nuevo nombre: ').upper()
    direccion = input('Ingresa la nueva dirección: ')
    telefono = input('Ingresa el nuevo teléfono: ')
    email = input('Ingresa el nuevo email: ')
    tiempo_entrega = int(input('Ingresa el nuevo tiempo de entrega: '))
    query = "UPDATE proveedores SET CUIT = %s, proveedor = %s, direccion = %s,  telefono = %s, email = %s, tiempodeentrega = %s WHERE CUIT = %s"
    values = (CUIT, proveedor, direccion, telefono, email, tiempo_entrega, CUIT_buscar,)
    cursor.execute(query, values)
    conn.commit()