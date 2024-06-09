def baja():

    salir = False
    while not salir:
        print('Ingresa la opción que desea dar de BAJA:')
        print('1 - PRODUCTOS')
        print('2 - PRESENTACIÓN')
        print('3 - PROVEEDOR')
        print('4 - SALIR')
        
        alternativa2 = int(input('Ingrese una opción: '))

        if alternativa2 == 1:
            print('\nPRODUCTO dado de BAJA con éxito.\n')

        elif alternativa2 == 2:
            print('\nPRESENTACIÓN dada de BAJA con éxito.\n')

        elif alternativa2 == 3:
            print('\nPROVEEDOR dado de BAJA con éxito.\n')

        elif alternativa2 == 4:
            print('Saliendo de la opción de BAJA...')
            salir = True

        else:
            print('\nOpción incorrecta\n')