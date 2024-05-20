# Usa una imagen base de Python 3.9
FROM python:3.9

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requisitos al contenedor de trabajo
COPY requirements.txt ./

# Crea un entorno virtual y activa
RUN python -m venv venv
RUN ./venv/bin/pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos de la aplicación al contenedor de trabajo
COPY . .

# Establece la variable de entorno para usar el entorno virtual
ENV PATH="/app/venv/bin:$PATH"

# Define el comando por defecto para ejecutar la aplicación
CMD ["python", "app.py"]

