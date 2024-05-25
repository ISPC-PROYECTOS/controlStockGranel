Algoritmo menu_opciones
	Definir opcion, alternativa, tipo_stock Como Entero
	
	Escribir '*****************************************************************'
	Escribir 'MEN� DE OPCIONES'
	Escribir '*****************************************************************'
	
	Escribir 'Menú de opciones'
	Escribir '1 - REGISTRO VENTA'
	Escribir '2 - CONSULTAR STOCK'
	Escribir '3 - ACTUALIZAR STOCK'
	Escribir '4 - ALTA'
	Escribir '5 - BAJA'
	Escribir '6 - MODIFICAR'
	Escribir '7 - SALIR'
	
	Leer opcion
	
	Repetir
			
		// 1 REGISTRO
		Si opcion = 1 Entonces
			Escribir ''
			Escribir '--> REGISTRO EXITOSO <--'
			Escribir ''
		FinSi
		
		// 2 CONSULTAR STOCK
		
		Si opcion = 2 Entonces
			Repetir
			Escribir 'Ingrese la opción de STOCK que desea CONSULTAR:'
			Escribir '1 - TOTAL'
			Escribir '2 - GRANEL'
			Escribir '3 - FRACCIONADO'
			Escribir '4 - SALIR'
			Leer tipo_stock
			Si tipo_stock = 1 Entonces
				Escribir ''
				Escribir '--> Consulta STOCK TOTAL realizada con éxito <--'
				Escribir ''
			SiNo
				Si tipo_stock = 2 Entonces
					Escribir ''
					Escribir '--> Consulta STOCK GRANEL realizada con éxito <--'
					Escribir ''
				SiNo
					Si tipo_stock = 3 Entonces
						Escribir ''
						Escribir '--> Consulta STOCK FRACCIONADO realizada con éxito <--'
						Escribir ''
					SiNo
						SI tipo_stock <> 4 Entonces 
							Escribir ''
							Escribir 'Opción incorrecta'
							Escribir ''
						FinSi
					FinSi
				FinSi
			FinSi
			Hasta que tipo_stock = 4
		FinSi
		
	
	// 3 ACTUALIZAR STOCK
	
		Si opcion = 3 Entonces
			Repetir
			Escribir 'Ingrese la opción de STOCK que desea ACTUALIZAR:'
			Escribir '1 - GRANEL'
			Escribir '2 - FRACCIONADO'
			Escribir '3 - SALIR'
		
			Leer tipo_stock2
			Si tipo_stock2 = 1 Entonces
					Escribir ''
					Escribir '--> Actualización STOCK GRANEL realizada con éxito <--'
					Escribir ''
			SiNo
				Si tipo_stock2 = 2 Entonces
					Escribir ''
					Escribir '--> Actualización STOCK FRACCIONADO realizada con éxito <--'
					Escribir ''
				SiNo
					SI tipo_stock2 <> 3 Entonces 
						Escribir ''
						Escribir 'Opción incorrecta'
						Escribir ''
					FinSi
				FinSi
			FinSi
			Hasta que tipo_stock2 = 3
		FinSi
		
		// 4 ALTA
		
		Si opcion = 4 Entonces
			Repetir
			Escribir 'Ingresa la opción que desea dar de ALTA:'
			Escribir '1 - PRODUCTOS'
			Escribir '2 - PRESENTACIÓN'
			Escribir '3 - PROVEEDOR'
			Escribir '4 - SALIR'
			Leer alternativa
			Si alternativa = 1 Entonces
				Escribir ''
				Escribir '--> PRODUCTO dado de ALTA con éxito <--'
				Escribir ''
			SiNo
				Si alternativa = 2 Entonces
					Escribir ''
					Escribir '--> PRESENTACIÓN dada de ALTA con éxito <--'
					Escribir ''
				SiNo
					Si alternativa = 3 Entonces
						Escribir ''
						Escribir '--> PROVEEDOR dado de ALTA con éxito <--'
						Escribir ''
					SiNo
						Escribir ''
						Escribir 'Opción incorrecta'
						Escribir ''
					FinSi
				FinSi
			FinSi
			Hasta que alternativa = 4
		FinSi
		
	
	// 5 BAJA
		
		Si opcion = 5 Entonces
			Repetir
			Escribir 'Ingresa la opción que desea dar de BAJA:'
			Escribir '1 - PRODUCTOS'
			Escribir '2 - PRESENTACIÓN'
			Escribir '3 - PROVEEDOR'
			Escribir '4 - SALIR'
			Leer alternativa2
			Si alternativa2 = 1 Entonces
				Escribir ''
				Escribir '--> PRODUCTO dado de BAJA con éxito <--'
				Escribir ''
			SiNo
				Si alternativa2 = 2 Entonces
					Escribir ''
					Escribir '--> PRESENTACIÓN dada de BAJA con éxito <--'
					Escribir ''
				SiNo
					Si alternativa2 = 3 Entonces
						Escribir ''
						Escribir '--> PROVEEDOR dado de BAJA con éxito <--'
						Escribir ''
					SiNo
						SI alternativa2 <> 4 Entonces 
							Escribir ''
							Escribir 'Opción incorrecta'
							Escribir ''
						FinSi
					FinSi
				FinSi
			FinSi
			Hasta que alternativa2 = 4
		FinSi
		
		// 6 MODIFICAR
		
		Si opcion = 6 Entonces
			Repetir 
			Escribir 'Ingresa la opción que desea MODIFICAR:'
			Escribir '1 - PRODUCTOS'
			Escribir '2 - PRESENTACIÓN'
			Escribir '3 - PROVEEDOR'
			Escribir '4 - SALIR'
			Leer alternativa3
			Si alternativa3 = 1 Entonces
				Escribir ''
				Escribir '--> PRODUCTO MODIFICADO con éxito <--'
				Escribir ''
			SiNo
				Si alternativa3= 2 Entonces
					Escribir ''
					Escribir '--> PRESENTACIÓN MODIFICADA con éxito <--'
					Escribir ''
				SiNo
					Si alternativa3 = 3 Entonces
						Escribir ''
						Escribir '--> PROVEEDOR MODIFICADO con éxito <--'
						Escribir ''
					SiNo
						SI alternativa3 <> 4 Entonces 
							Escribir ''
							Escribir 'Opción incorrecta'
							Escribir ''
						FinSi
						
					FinSi
				FinSi
			FinSi
			Hasta que alternativa3 = 4
		FinSi
		
		// 7 ELIMINAR
		
		Si opcion = 7 Entonces
			Repetir
			Escribir 'Ingresa la opción que desea ELIMINAR:'
			Escribir '1 - PRODUCTOS'
			Escribir '2 - PRESENTACIÓN'
			Escribir '3 - PROVEEDOR'
			Escribir '4 - SALIR'
			Leer alternativa4
			Si alternativa4 = 1 Entonces
				Escribir ''
				Escribir '--> PRODUCTO ELIMINADO con éxito <--'
				Escribir ''
			SiNo
				Si alternativa4 = 2 Entonces
					Escribir ''
					Escribir '--> PRESENTACIÓN ELIMINADA con éxito <--'
					Escribir ''
				SiNo
					Si alternativa4 = 3 Entonces
						Escribir ''
						Escribir '--> PROVEEDOR ELIMINADO con éxito <--'
						Escribir ''
					SiNo
						SI alternativa4 <> 4 Entonces 
							Escribir ''
							Escribir 'Opción incorrecta'
							Escribir ''
						FinSi
					FinSi
				FinSi
			FinSi
			Hasta que alternativa4 = 4
		FinSi
		
		
		Escribir 'Menú de opciones'
		Escribir '1 - REGISTRO VENTA'
		Escribir '2 - CONSULTAR STOCK'
		Escribir '3 - ACTUALIZAR STOCK'
		Escribir '4 - ALTA'
		Escribir '5 - BAJA'
		Escribir '6 - MODIFICAR'
		Escribir '7 - SALIR'
		Escribir  'Ingresa la opción que desea ejecutar: '
		Leer opcion
	Hasta Que opcion = 7
	
FinAlgoritmo
