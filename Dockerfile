FROM python:3.11-slim

WORKDIR /app

COPY my-flask-app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY my-flask-app/ .

EXPOSE 5000

CMD ["python", "app.py"]
