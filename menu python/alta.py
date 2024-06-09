def alta ():
    salir = False
    while not salir:
        print('Ingresa la opción que desea dar de ALTA:')
        print('1 - PRODUCTOS')
        print('2 - PRESENTACIÓN')
        print('3 - PROVEEDOR')
        print('4 - SALIR')
        
        alternativa = int(input('Ingrese una opción: '))

        if alternativa == 1:
            print('\nPRODUCTO dado de ALTA con éxito.\n')

        elif alternativa == 2:
            print('\nPRESENTACIÓN dada de ALTA con éxito.\n')

        elif alternativa == 3:
            print('\nPROVEEDOR dado de ALTA con éxito.\n')

        elif alternativa == 4:
            print('\nSaliendo de la opción de ALTA...\n')
            salir = True

        else:
            print('\nOpción incorrecta\n')