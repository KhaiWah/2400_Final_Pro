FROM python:3.13.13-slim-trixie@sha256:d2462a6bed37b4fc6cabecf5a2132ae70df772fe03c7393c4d98a0c2fb48aa2e

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
