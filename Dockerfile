# Etapa 1: imagine de bază mică
FROM python:3.12-slim

# Director de lucru în container
WORKDIR /app

# Copiem dependențele PRIMUL (caching Docker layers)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiem codul aplicației
COPY app/ ./app/

# Portul pe care ascultă aplicația
EXPOSE 8000

# Comanda de pornire
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]