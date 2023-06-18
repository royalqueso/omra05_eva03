#!/bin/bash

# Construir la imagen Docker


# Ejecutar el contenedor a partir de la imagen
docker run -d -p 8889:8889 --name rubilar_running rubilar_imagen

# Comprobar la conexión
echo "Comprobando la conexión..."
sleep 5
curl http://localhost:8889

# Verificar que el contenedor está en ejecución
echo "El contenedor está corriendo:"
docker ps | grep rubilar_running
