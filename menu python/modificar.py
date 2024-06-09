def modificar():
    salir = False  
    while not salir: 
        print("Ingresa la opción que desea MODIFICAR:")
        print("1 - PRODUCTOS")
        print("2 - PRESENTACION")
        print("3 - PROVEEDOR")
        print("4 - SALIR")
        
        modificar_algo = int(input("Ingrese una opción: "))

        if modificar_algo == 1:
            print("\nEl PRODUCTO fue MODIFICADO con éxito.\n")
            
        elif modificar_algo== 2:
            print("\nPRESENTACIÓN fue MODIFICADA con éxito.\n")

        elif modificar_algo == 3:
            print("")
            print("\nEl PROVEEDOR fue MODIFICADO con éxito.\n")
            print("")

        elif modificar_algo == 4:
            print('\nSaliendo de la opción MODIFICAR...\n')
            salir = True 

        else:
            print("\nOpción incorrecta\n")
