FROM python:3.9.12-slim-bullseye
WORKDIR /dataset
COPY requirements.txt /
RUN sudo apt-get install libpq-dev
RUN pip install -r /requirements.txt
CMD ["echo", "Bem Vindo"]
