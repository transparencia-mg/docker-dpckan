FROM ubuntu:20.04
RUN apt update
RUN apt install python3.9
RUN apt install python3.9-pip
RUN apt install libpq-dev
COPY requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /dataset
CMD ["echo", "Bem Vindo"]