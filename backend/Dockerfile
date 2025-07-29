# Etapa base com Python
FROM python:alpine

# Evita que Python crie ficheiros .pyc e ativa logs diretos
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

# Instalar dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt gunicorn

# Copiar o código do backend
COPY . .

# Expor a porta que Cloud Run vai usar
EXPOSE 8000

# Comando de produção: usar gunicorn com 4 workers
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "app:app"]
