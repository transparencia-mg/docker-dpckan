FROM python:3.9.12-slim-bullseye
RUN apt-get install -y --no-install-recommends libpq-dev=11.10-0+deb10u1
COPY requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /dataset
CMD ["echo", "Bem Vindo"]
