# Dockerfile para aplicação Python - API REST
FROM python:3.9-slim
WORKDIR /
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "api.py"]

