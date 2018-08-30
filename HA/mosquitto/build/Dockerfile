FROM resin/rpi-raspbian:jessie
MAINTAINER Elze Kool <info@kooldevelopment.nl>

RUN apt-get update \ 
 && apt-get install -y apt-transport-https

RUN apt-get update \
 && apt-get install -y wget \
 && wget -q -O - http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key | apt-key add - \
 && wget -q -O /etc/apt/sources.list.d/mosquitto-jessie.list http://repo.mosquitto.org/debian/mosquitto-jessie.list \
 && apt-get update \
 && apt-get install -y mosquitto \
 && apt-get purge -y --auto-remove \
 && rm -rf /var/lib/apt/lists/* \
 && apt-get clean

RUN mkdir -p /mqtt/config /mqtt/data /mqtt/log
COPY config /mqtt/config
RUN chown -R mosquitto:mosquitto /mqtt
RUN chmod 777 /mqtt/log \
 && chmod 777 /mqtt/data \
 && chmod 777 /mqtt/config

RUN touch /mqtt/log/mosquitto.log \
 && chmod 777 /mqtt/log/mosquitto.log


VOLUME ["/mqtt/config", "/mqtt/data", "/mqtt/log"]

EXPOSE 1883 9001

CMD /usr/sbin/mosquitto -v -c /mqtt/config/mosquitto.conf
