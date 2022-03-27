FROM python:3.9.12-slim-bullseye
RUN apt-get install libpq5=12.5-0ubuntu0.20.04.1
RUN apt-get install libpq-dev
COPY requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /dataset
CMD ["echo", "Bem Vindo"]
