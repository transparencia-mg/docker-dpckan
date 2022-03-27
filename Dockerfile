FROM python:3.9.12-slim-bullseye
WORKDIR /dataset
COPY requirements.txt /
RUN apt-get update
RUN apt-get install libpq-dev
RUN pip install -r /requirements.txt
CMD ["echo", "Bem Vindo"]
