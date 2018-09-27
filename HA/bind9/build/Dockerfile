FROM resin/rpi-raspbian:jessie

RUN apt-get update \
 && apt-get install -y bind9 rsyslog 

COPY config/named.conf.options /etc/bind/named.conf.options
COPY config/named.conf.local /etc/bind/named.conf.local
COPY config/start-bind.sh /usr/local/bin/start-bind.sh
COPY config/kilowatduckdns.db /etc/bind/kilowatduckdns.db

RUN chmod +x /usr/local/bin/start-bind.sh

EXPOSE 53/udp 53/tcp 10000/tcp

CMD /usr/local/bin/start-bind.sh

