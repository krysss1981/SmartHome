FROM homeassistant/raspberrypi3-homeassistant
RUN cd /tmp
RUN wget http://mirrordirector.raspbian.org/raspbian/pool/main/a/apt/apt_0.9.7.7+rpi1_armhf.deb
RUN dpkg -i apt_0.9.7.7+rpi1_armhf.deb
RUN apt-get update && apt-get install -y nmap
