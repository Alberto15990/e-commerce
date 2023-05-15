GUIA / DESCRIPCION

1. Levantar los contenedores e instalar todas los paquetes o extensiones necesarias para trabajar.


2.  Comenzar con la creacion del Proyecto :
        - Crear la estructura. ( carpetas, subcarpetas, archivos,requerimientos...)
        - Crear las tablas necesrias para el desarollo del ejercicio
        - Insertar los valores en dichas tablas.
        - Generar, las rutas, controladores y peticiones (queires).
        - Implantar en el proyecto tanto el proceso de Autenticacion como el de Autorizacion.


## Endpoints
1. Haz un endpoint para obtener todos los clients y su informacion completa

// GET http://localhost:4000/clients


2. Haz un endpoint para obtener todos los productos que tengas en stock que superen los 1000€

// GET http://localhost:4000/orders


3. Crear un endpoint en el que un cliente pueda pedir varios propductos diferentes en un mismo numero de pedido

// GET http://localhost:4000/products

{
    "id": "8bbeca20-6315-4de2-860b-23c5f318d6c1",
    "products": ["Iphone 48", "Xbox 360", "Xiaomi Band 4"]
}
