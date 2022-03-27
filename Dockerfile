FROM ubuntu:20.04
COPY scripts.sh /
RUN chmod +x /scripts.sh
RUN /scripts.sh
COPY requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /dataset
CMD ["echo", "Bem Vindo"]