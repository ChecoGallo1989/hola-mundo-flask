# Imagen base
FROM python:3.9-slim

# Directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Exponer puerto
EXPOSE 5000

# Comando de inicio
CMD ["python", "app.py"]