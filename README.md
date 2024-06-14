# controlStockGranel

## **INTEGRANTES:**
- CONSUELO VIRAMONTE - 25411481 - Consueloviramonte@gmail.com - https://github.com/ConsueloViramont
- HEBE CAROLINA PEREYRA - 33117717 - hebecpereyra@gmail.com - https://github.com/HebePereyra
- JESICA VALDIVIA - 34980147 - arqjesicavaldivia@gmail.com - https://github.com/jesivaldi
- MARIELA ROSA SUAREZ - 21718397 - mariela_suarezz@hotmail.com - https://github.com/MarielarosaSZ
- VICTORIA MARGARITA PICCO - 39546009 - vpicco1996@gmail.com - https://github.com/vickpicco
- ULISES MARTINELLI - 25342899 - umartinelli@gmail.com - https://github.com/dataulix


### **ARCHIVOS:**
- Documento borrador evidencia 2 (registro de trabajo y reuniones): https://docs.google.com/document/d/1wTjAyzzBL1a2AIScu6wUFpwEmDmOK-YvwSuB7BjBYCw/edit
- Análisis preliminar evidencia 2: https://lucid.app/lucidchart/d478c2d5-d1b7-4dc0-a590-36a8151231fc/edit?viewport_loc=-36%2C-93%2C2219%2C1007%2C0_0&invitationId=inv_8c5aefd0-8eeb-475d-98f2-3bfdbb3dc0d8

## ***PROPUESTA A DESARROLLAR***

### **PROBLEMA:**
 
- Empresa de venta de productos naturales, solicita un sistema de stock, para contabilizar los productos que ingresan a granel, que posteriormente son fraccionados y vendidos.

### **DATOS A TENER EN CUENTA:**

- Un proveedor vende varios productos y un solo producto es proveído por un único proveedor. 
- Cada producto puede tener distintas presentaciones (fraccionados en distintas unidades de medida).
- Cada salida (venta) tiene solo un producto fraccionado.
- Todos los productos se fraccionan. 

### **REQUERIMIENTOS:**
 
Dentro de los requerimientos se necesita que el sistema genere:
- Una alerta para niveles mínimos de stock. 
- Una alerta de vencimientos de los productos con un mes de anticipación.
- Función de consulta de stock total de depósito 1 (granel) y depósito 2 (fraccionamiento).
- Ingreso del producto y proveedor al sistema.
- Registrar venta del producto fraccionado (salida).

### **DETALLE DE LA APLICACIÓN MODULARIZA:**

## Descripción
Este proyecto es un ejemplo de aplicación con un CRUD de MySQL en Python.

## Requisitos
Antes de comenzar, asegúrate de tener instalados los siguientes componentes:
- Python
- MySQL
- Además, deberás instalar el controlador de MySQL para Python. Para hacerlo, ejecuta el siguiente comando en la línea de comandos:
bash
python -m pip install mysql-connector-python

Módulo `index.py`: Contiene el menú principal, muestra a través de la función `menu_opciones`, los requerimientos solicitados por el cliente. Cada opción está modularizada en un archivo `.py`. 
  
## Configuración
Sigue estos pasos para configurar y ejecutar la aplicación:

1. Crear la base de datos:
Crea una base de datos llamada stockagranel utilizando el script scriptControlStockFinal.sql.

2. Cargar los datos iniciales:
Ejecuta el script insertsControlStock.sql para cargar los datos iniciales en la base de datos.

3. Configurar la conexión a la base de datos:
Abre el archivo conexion_bd.py y agrega tus datos de conexión a MySQL (usuario, clave y nombre de la base de datos).

4. Ejecutar la aplicación:
Ejecuta el archivo index.py. Aparecerá un menú interactivo para manejar el CRUD.
A continuación se explica cada una:



### **Opciones del menú principal:**

1. **Registro de venta**:
    - Llama a la función `registro_venta` del módulo `registro_venta.py`.
    - Permite cargar de forma manual un producto que se ha vendido y a su vez modificar la cantidad en la tabla "presentaciones".

2. **Consultar stock**:
    - Llama a la función `consultar_stock` del módulo `consultar_stock.py`. 
    - Contiene un submenú:
      ```text
      Ingrese la opción de consultar stock que desea:
      
      1. Total: ingresando la descripción de un producto muestra todos los registros que contengan dicha descripción que están tanto  en la tabla "productosGranel" como en la de "presentaciones"
      2. Granel: ingresando la descripción de un producto muestra todos los registros que contengan dicha descripción que están en la tabla "productosGranel".
      3. Fraccionado: ingresando la descripción de un producto muestra todos los registros que contengan dicha descripción que están en la tabla "presentaciones".
      4. Volver al menú principal: Vuelve al menú principal.
      ```

3. **Actualizar stock**:
    - Llama a la función `actualizar_stock` del módulo `actualizar_stock.py`.
    - Contiene un submenú:
      ```text
      Ingrese la opción que desea ACTUALIZAR:
      
      1. Granel: ingresando la fecha de la operación, el "idproductogranel" y la cantidad registra el ingreso en la tabla "prodProv" y actualiza la cantidad en la tabla "productosGranel"
      2. Fraccionado: ingresando la fecha de la operación, el "idpresentaciones" y la cantidad registra el ingreso en la tabla "presentaciones" actualizando la cantidad.
      3. Salir: Vuelve al menú principal.
      ```

4. **Alta**:
    - Llama a la función `alta` del módulo `alta.py`.
    - Contiene un submenú:
      ```text
      Ingresa la opción que desea dar de ALTA:
      
      1. Productos: Permite crear un registro para un producto nuevo ingresando todos sus atributos a la tabla "productosGranel"
      2. Presentación: Permite crear un registro para una presentación nueva ingresando todos sus atributos a la tabla "presentaciones"
      3. Proveedor: Permite crear un registro para un proveedor nuevo ingresando todos sus atributos a la tabla "proveedores"
      4. Salir: Vuelve al menú principal.
      ```

5. **Baja**:
    - Llama a la función `baja` del módulo `baja.py`.
    - Contiene un submenú:
      ```text
      Ingresa la opción que desea dar de BAJA:
      
      1. Productos: Elimina sólo de la tabla "productosGranel" un producto que ya no se comercializa
      2. Presentación: Elimina sólo de la tabla "presentaciones" una presentación determinada de un producto que ya no se fracciona en ese tamaño.
      3. Proveedor: Elimina sólo de la tabla "proveedores" un proveedor que ya no trabaja con la empresa
      4. Salir: Vuelve al menú principal.
      ```

6. **Modificar**:
    - Llama a la función `modificar` del módulo `modificar.py`.
    - Contiene un submenú:
      ```text
      Ingresa la opción que desea dar de ALTA:
      
      1. Productos:  corrjge un eror de carga de un producto determinado
      2. Presentación: corrije un eror de carga de una presentacion determinada
      3. Proveedor: corregir un eror de carga de proveedor determinado
      4. Salir: Vuelve al menú principal.
      ```

7. **Salir**:
    - Imprime un mensaje de agradecimiento.
  
    - # ARCHIVO README.MD DE LA APLICACIÓN

