FROM python:3.9.12-slim-bullseye
RUN apt-get update
RUN apt-get -y install build-essential
WORKDIR /dataset
COPY scripts/ /scripts
COPY requirements.txt /
RUN pip install -r /requirements.txt
CMD ["echo", "Bem Vindo"]
