# ARCHIVO README.MD DE LA APLICACIÓN

## Descripción
Este proyecto es un ejemplo de aplicación con un CRUD de MySQL en Python.

## Requisitos
Antes de comenzar, asegúrate de tener instalados los siguientes componentes:
- Python
- MySQL

Además, deberás instalar el controlador de MySQL para Python. Para hacerlo, ejecuta el siguiente comando en la línea de comandos:
```bash
python -m pip install mysql-connector-python

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

##¡Listo! Ahora deberías poder utilizar la aplicación.