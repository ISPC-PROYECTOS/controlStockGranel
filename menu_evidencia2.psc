Algoritmo menu_opciones
	Definir opcion, alternativa, tipo_stock Como Entero
	
	Escribir '*****************************************************************'
	Escribir 'MENÚ DE OPCIONES'
	Escribir '*****************************************************************'
	
	Repetir
		Escribir 'Menú de opciones'
		Escribir '1 - REGISTRO VENTA'
		Escribir '2 - CONSULTAR STOCK'
		Escribir '3 - ACTUALIZAR STOCK'
		Escribir '4 - ALTA'
		Escribir '5 - BAJA'
		Escribir '6 - MODIFICAR'
		Escribir '7 - ELIMINAR'
		Escribir '8 - SALIR'
		
		
		// 1 REGISTRO
		Si opcion = 1 Entonces
			Escribir ''
			Escribir '--> REGISTRO EXITOSO <--'
			Escribir ''
		FinSi
		
		// 2 CONSULTAR STOCK
		Si opcion = 2 Entonces
			Escribir 'Ingrese la opción de STOCK que desea CONSULTAR:'
			Escribir '1 - TOTAL'
			Escribir '2 - GRANEL'
			Escribir '3 - FRACCIONADO'
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
						Escribir ''
						Escribir 'Opción incorrecta'
						Escribir ''
					FinSi
				FinSi
			FinSi
		FinSi
		
		// 3 ACTUALIZAR STOCK
		Si opcion = 3 Entonces
			Escribir 'Ingrese la opción de STOCK que desea ACTUALIZAR:'
			Escribir '1 - TOTAL'
			Escribir '2 - GRANEL'
			Escribir '3 - FRACCIONADO'
			Leer tipo_stock
			Si tipo_stock = 1 Entonces
				Escribir ''
				Escribir '--> Actualización STOCK TOTAL realizada con éxito <--'
				Escribir ''
			SiNo
				Si tipo_stock = 2 Entonces
					Escribir ''
					Escribir '--> Actualización STOCK GRANEL realizada con éxito <--'
					Escribir ''
				SiNo
					Si tipo_stock = 3 Entonces
						Escribir ''
						Escribir '--> Actualización STOCK FRACCIONADO realizada con éxito <--'
						Escribir ''
					SiNo
						Escribir ''
						Escribir 'Opción incorrecta'
						Escribir ''
					FinSi
				FinSi
			FinSi
		FinSi
		
		// 4 ALTA
		Si opcion = 4 Entonces
			Escribir 'Ingresa la opción que desea dar de ALTA:'
			Escribir '1 - PRODUCTOS'
			Escribir '2 - PRESENTACIÓN'
			Escribir '3 - PROVEEDOR'
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
		FinSi
		
		// 5 BAJA
		Si opcion = 5 Entonces
			Escribir 'Ingresa la opción que desea dar de BAJA:'
			Escribir '1 - PRODUCTOS'
			Escribir '2 - PRESENTACIÓN'
			Escribir '3 - PROVEEDOR'
			Leer alternativa
			Si alternativa = 1 Entonces
				Escribir ''
				Escribir '--> PRODUCTO dado de BAJA con éxito <--'
				Escribir ''
			SiNo
				Si alternativa = 2 Entonces
					Escribir ''
					Escribir '--> PRESENTACIÓN dada de BAJA con éxito <--'
					Escribir ''
				SiNo
					Si alternativa = 3 Entonces
						Escribir ''
						Escribir '--> PROVEEDOR dado de BAJA con éxito <--'
						Escribir ''
					SiNo
						Escribir ''
						Escribir 'Opción incorrecta'
						Escribir ''
					FinSi
				FinSi
			FinSi
		FinSi
		
		// 6 MODIFICAR
		Si opcion = 6 Entonces
			Escribir 'Ingresa la opción que desea MODIFICAR:'
			Escribir '1 - PRODUCTOS'
			Escribir '2 - PRESENTACIÓN'
			Escribir '3 - PROVEEDOR'
			Leer alternativa
			Si alternativa = 1 Entonces
				Escribir ''
				Escribir '--> PRODUCTO MODIFICADO con éxito <--'
				Escribir ''
			SiNo
				Si alternativa = 2 Entonces
					Escribir ''
					Escribir '--> PRESENTACIÓN MODIFICADA con éxito <--'
					Escribir ''
				SiNo
					Si alternativa = 3 Entonces
						Escribir ''
						Escribir '--> PROVEEDOR MODIFICADO con éxito <--'
						Escribir ''
					SiNo
						Escribir ''
						Escribir 'Opción incorrecta'
						Escribir ''
					FinSi
				FinSi
			FinSi
		FinSi
		
		// 7 ELIMINAR
		Si opcion = 7 Entonces
			Escribir 'Ingresa la opción que desea ELIMINAR:'
			Escribir '1 - PRODUCTOS'
			Escribir '2 - PRESENTACIÓN'
			Escribir '3 - PROVEEDOR'
			Leer alternativa
			Si alternativa = 1 Entonces
				Escribir ''
				Escribir '--> PRODUCTO ELIMINADO con éxito <--'
				Escribir ''
			SiNo
				Si alternativa = 2 Entonces
					Escribir ''
					Escribir '--> PRESENTACIÓN ELIMINADA con éxito <--'
					Escribir ''
				SiNo
					Si alternativa = 3 Entonces
						Escribir ''
						Escribir '--> PROVEEDOR ELIMINADO con éxito <--'
						Escribir ''
					SiNo
						Escribir ''
						Escribir 'Opción incorrecta'
						Escribir ''
					FinSi
				FinSi
			FinSi
		FinSi

	Escribir  'Ingresa la opción que desea ejecutar: '
	Leer opcion
	Hasta Que opcion = 8
	
FinAlgoritmo
