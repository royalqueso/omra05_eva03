# Utiliza una imagen base adecuada, por ejemplo, Python
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios al directorio de trabajo del contenedor
COPY rubilar_website.py /app/

# Instala las dependencias necesarias
RUN pip install flask

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 8888

# Establece el comando de inicio para ejecutar la aplicación
CMD ["python", "rubilar_website.py"]

