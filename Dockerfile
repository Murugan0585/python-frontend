# Base image
FROM python:3.11-slim

WORKDIR /app

# Copy and install dependencies first (for layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
