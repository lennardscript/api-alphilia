FROM python:3.10.9

# Establecer salida sin búfer para python
ENV PYTHONUNBUFFERED 1

# Crear directorio de aplicaciones
WORKDIR /app

# Instalar dependencias de aplicaciones
COPY requirements.txt .
RUN pip install -r requirements.txt

# Fuente de la aplicación del paquete
COPY . .

# Exponer puerto
EXPOSE 5000

# punto de entrada en que se va a ejecutar el archivo django.sh
ENTRYPOINT ["/app/django.sh"]