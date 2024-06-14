from conexion_bd import cursor, conn
from mostrar_tablas import mostrar_productos_fraccionados_disponibles

# esta funcion carga la tabla donde se registran los productos vendidos ...
def registro_venta_actulizacion_stock(): 
    print('\nPRODUCTOS DISPONIBLES:\n ')
    print('ID - DESCRIP - CANT - TAMAÑO - UM...') #formato para que el resultado se vea ordenado
    mostrar_productos_fraccionados_disponibles() #importado para mostrar dispnibles, asi el usuario elige el dato que necesita
    fecha_venta = input('Ingresa la fecha(AAAA-MM-DD): ')# pide al usuario la fecha de venta
    cantidad = int(input('Ingresa la cantidad: ')) # pide al usuario la cantidad vendida
    id_producto_fracc = int(input('Ingresa el ID del producto vendido: ')) #pide al usurio el id producto que se muestra en la tabla anterior
    query_insert = "INSERT INTO registroventa (fechaventa, cantidad, idproductofracc) VALUES (%s, %s, %s)"# variable que contiene la consulta MySQL usando %s de comodin
    values_insert = (fecha_venta, cantidad, id_producto_fracc) # contiene las variables a insertar
    cursor.execute(query_insert, values_insert) #método para ejecutar en la base de datos, parametros(la consulta, y los datos a cargar)

#... actualizar la cantidad del articulo en la tabla presentaciones

    query_update = " UPDATE presentaciones SET cantidad = cantidad - %s WHERE idProductoFracc = %s " #variable con la consulta MySQL
    values_update = (cantidad, id_producto_fracc)#contiene las variables de los datos
    cursor.execute(query_update, values_update) #método para ejecutar en la base de datos, parametros(la consulta, y los datos a cargar)
    conn.commit() #Este método envía una declaración COMMIT al servidor MySQL, confirmando la transacción actual. 
    print("\nSU VENTA SE REGISTRO EXITOSAMENTE.\n")