def consultar_stock():
    salir = False  
    while not salir:    
        print("Ingrese la opción de STOCK que desea CONSULTAR:")
        print("1 - TOTAL")
        print("2 - GRANEL")
        print("3 - FRACCIONADO")
        print("4 - SALIR")
           
        tipo_stock1 = int(input("Ingrese una opción: "))

        if tipo_stock1 == 1:
            print("\nConsulta STOCK TOTAL realizada con éxito.\n")
            
        elif tipo_stock1 == 2:
            print("\nConsulta STOCK GRANEL realizada con éxito.\n")

        elif tipo_stock1 == 3:
            print("\nConsulta STOCK FRACCIONADO realizada con éxito.\n")

        elif tipo_stock1 == 4:
            print("Saliendo de la opción CONSULTA de STOCK...")
            salir = True 

        else:
            print("\nOpción incorrecta.\n")
            

