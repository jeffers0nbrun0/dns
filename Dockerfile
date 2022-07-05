FROM debian:stable
RUN apt-get update -y; apt-get full-update -y; apt autoremove -y
RUN apt-get -y bind9 bind9 utils wget curl dnsutils vim nano bash

# Copiando arquivos de configurações para o container
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY db.asa /etc/bind/zones/

CMD ["bin/bash", "-c","while :; do sleep 10;done"]