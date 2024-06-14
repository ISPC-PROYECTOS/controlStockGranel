import actualizar_stock 
import alta
import baja 
import consultar_stock
import modificar 
from registro_venta import registro_venta_actulizacion_stock


def menu_opciones():
    print("*****************************************************************")
    print("MENÚ DE OPCIONES")
    print("*****************************************************************") 
    print("")
    print("1 - REGISTRO VENTA") # LISTO (esta opción permite cargar de forma manual un producto que se ha vendido)
    print("2 - CONSULTAR STOCK") # LISTO (esta opcion permite hacer consultas de la cantidad de uno o varios productos en stock)
    print("3 - ACTUALIZAR STOCK") # LISTO (esta opcion permite actualizar la cantidad por ingreso de articulo a granel, o cuando se fracciona, agregar a tablas fraccionado)
    print("4 - ALTA") # LISTO (esta opción da de alta un producto nuevo,una nueva presentacion o un proveedor nuevo)
    print("5 - BAJA") # LISTO (esta opcion da de baja un producto que ya no se comercialice, una presentacion que no se haga mas o un proveedor.)
    print("6 - MODIFICAR") # LISTO (esta opcion corregir un eror de carga de proveedor, producto o presentacion.)
    print("7 - SALIR") 


salir = False
while not salir:
	menu_opciones()
	opcion = int(input("Ingrese una opción: "))
	if opcion == 1:
		registro_venta_actulizacion_stock()

	elif opcion == 2:
		consultar_stock.consultar_stock()

	elif opcion == 3:
		actualizar_stock.actualizar_stock()
	
	elif opcion == 4:
		alta.alta()
	
	elif opcion == 5:
		baja.baja()
	
	elif opcion == 6:
		modificar.modificar()
		
	elif opcion == 7:
		print("Gracias por usar nuestro programa")
		salir = True

	else: 
		print ("La opción es incorrecta")