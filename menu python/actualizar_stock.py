def actualizar_stock():
    salir = False  
    while not salir: 
        print("Ingrese la opción de STOCK que desea ACTUALIZAR: ")
        print("1 - GRANEL")
        print("2 - FRACCIONADO")
        print("3 - SALIR")
        
        tipo_stock2 = int(input("Ingrese una opción: "))

        if tipo_stock2 == 1:
            print("\nActualización STOCK GRANEL realizada con éxito.\n")

        elif tipo_stock2 == 2:
            print("\nActualización STOCK FRACCIONADO realizada con éxito.\n")

        elif tipo_stock2 == 3:
            print("Saliendo de la opción ACTUALIZACIÓN de STOCK...")
            salir = True  

        else:
            print("\nOpción incorrecta\n")
