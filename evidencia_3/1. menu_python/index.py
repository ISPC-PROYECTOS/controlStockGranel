import actualizar_stock 
import alta
import baja 
import consultar_stock 
import modificar 
import registro_venta

def menu_opciones():
    print("*****************************************************************")
    print("MENÚ DE OPCIONES")
    print("*****************************************************************") 
    print("")
    print("1 - REGISTRO VENTA") 
    print("2 - CONSULTAR STOCK") 
    print("3 - ACTUALIZAR STOCK")
    print("4 - ALTA") 
    print("5 - BAJA") 
    print("6 - MODIFICAR") 
    print("7 - SALIR")


salir = False
while not salir:
	menu_opciones()
	opcion = int(input("Ingrese una opción: "))
	if opcion == 1:
		registro_venta.registro_venta()

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


