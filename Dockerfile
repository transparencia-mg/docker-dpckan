FROM python:3.9.12-slim-bullseye
RUN apt-get install python-dev libpq-dev
COPY requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /dataset
CMD ["echo", "Bem Vindo"]
