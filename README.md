# controlStockGranel

**INTEGRANTES:**
- CONSUELO VIRAMONTE - 25411481 - Consueloviramonte@gmail.com - https://github.com/ConsueloViramont
- HEBE CAROLINA PEREYRA - 33117717 - hebecpereyra@gmail.com - https://github.com/HebePereyra
- JESICA VALDIVIA - 34980147 - arqjesicavaldivia@gmail.com - https://github.com/jesivaldi
- MARIELA ROSA SUAREZ - 21718397 - mariela_suarezz@hotmail.com - https://github.com/MarielarosaSZ
- VICTORIA MARGARITA PICCO - 39546009 - vpicco1996@gmail.com - https://github.com/vickpicco
- ULISES MARTINELLI - 25342899 - umartinelli@gmail.com - https://github.com/dataulix


**ARCHIVOS:**
- Documento borrador: (registro de trabajo y reuniones)
https://docs.google.com/document/d/1wTjAyzzBL1a2AIScu6wUFpwEmDmOK-YvwSuB7BjBYCw/edit

- Análisis preliminar: https://lucid.app/lucidchart/d478c2d5-d1b7-4dc0-a590-36a8151231fc/edit?viewport_loc=-36%2C-93%2C2219%2C1007%2C0_0&invitationId=inv_8c5aefd0-8eeb-475d-98f2-3bfdbb3dc0d8

## ***PROPUESTA A DESARROLLAR***


**PROBLEMA:**
 
- Empresa de venta de productos naturales, solicita un sistema de stock, para contabilizar los productos que ingresan a granel, que posteriormente son fraccionados y vendidos.

**DATOS A TENER EN CUENTA:**

 - Un proveedor vende varios productos y un solo producto es proveído por un único proveedor. 
- Cada producto puede tener distintas presentaciones (fraccionados en distintas unidades de medida).
- Cada salida (venta) tiene solo un producto fraccionado.
- Todos los productos se fraccionan. 

**REQUERIMIENTOS:**
 
 Dentro de los requerimientos se necesita que el sistema genere:
- Una alerta para niveles mínimos de stock. 
- Una alerta de vencimientos de los productos con un mes de anticipación.
- Función de consulta de stock total de depósito 1 (granel) y depósito 2 (fraccionamiento).
- Ingreso del producto y proveedor al sistema.
- Registrar venta del producto fraccionado (salida).


Detalle de la aplicación modularizada:

Modularización:
Módulo #index.py: Contiene el menu principal, muestra a través de la función #menu_opciones, los requerimientos solicitados por el cliente. Cada opción está modularizada en un archivo.py. A continuación se explica cada una:
Opción 1: Registro de venta: aqui se llama a la función registro_venta del módulo  #registro_venta.py. Por el momento imprime "SU VENTA SE REGISTRÓ EXITOSAMENTE"
Opción 2: Consultar stock: aquí se llama a la función consultar_stock del módulo #consultar_stock.py. Este contiene un submenú:
Ingrese la opción de consultar stock que desea:
1- Total. Por el momento imprime: Consulta STOCK TOTAL realizada con éxito
2- Granel. Por el momento imprime: Consulta STOCK GRANEL realizada con éxito
3- Fraccionado. Por el momento imprime:  Consulta STOCK FRACCIONADO realizada con éxito
4- Volver al menú principal. Vuelve al menú principal.

Opción 3: Actualizar stock: aquí se llama a la función actualizar_stock del módulo #actualizar_stock.py. Ésta contiene un submenú:
Ingrese la opción que desea ACTUALIZAR:
1- Granel. Por el momento imprime: Actualización STOCK GRANEL realizada con éxito.
2- Fraccionado. Por el momento imprime: Actualización STOCK FRACCIONADO realizada con éxito.
3- Salir. Vuelve al menú principal.
  	
Opción 4: Alta: aquí se llama a la función alta del módulo #alta.py.  Ésta contiene un submenú:
           Ingresa la opción que desea dar de ALTA:
1- Productos: Por el momento imprime: PRODUCTO dado de ALTA con éxito.
2- Presentación: Por el momento imprime: PRESENTACIÓN dada de ALTA con éxito
3- Proveedor: Por el momento imprime: PROVEEDOR dado de ALTA con éxito.
4- Salir. Vuelve al menú principal.
Opción 5: Baja: aquí se llama a la función baja del módulo #baja.py.  Ésta contiene un submenú:
           Ingresa la opción que desea dar de BAJA:
1- Productos: Por el momento imprime: PRODUCTO dado de BAJA con éxito.
2- Presentación: Por el momento imprime: PRESENTACIÓN dada de BAJA con éxito
3- Proveedor: Por el momento imprime: PROVEEDOR dado de BAJA con éxito.
4- Salir. Vuelve al menú principal.
Opción 6: Modificar: aquí se llama a la función modificar del módulo #modificar.py.  Ésta contiene un submenú:
           Ingresa la opción que desea dar de ALTA:
1- Productos: Por el momento imprime: El PRODUCTO fue modificado con éxito.
2- Presentación: Por el momento imprime: La PRESENTACIÓN fue modificada con éxito.
3- Proveedor: Por el momento imprime: El PROVEEDOR fue modificado con éxito.
4-Salir. Vuelve al menú principal.
Opción 7: Salir. Imprime un mensaje de agradecimiento.


