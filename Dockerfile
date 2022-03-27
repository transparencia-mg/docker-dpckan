FROM python:3.9.12-slim-bullseye
WORKDIR /dataset
COPY scripts/ / 
COPY requirements.txt /
RUN pip install -r /requirements.txt
CMD ["echo", "Bem Vindo"]