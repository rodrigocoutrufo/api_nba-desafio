# 
FROM python:3.9

# 
WORKDIR /app

# Copiar o conteúdo do diretório atual para o container em /app
COPY . .

# 
RUN pip install -r requirements.txt

# 
EXPOSE 8088

# 
CMD ["python", "main.py", "--host", "127.0.0.1", "--port", "8088"]