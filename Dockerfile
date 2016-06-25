FROM ubuntu:xenial
MAINTAINER Therry van Neerven <mail@therryvanneerven.nl>

ENV DEBIAN_FRONTEND noninteractive

# https://help.ubnt.com/hc/en-us/articles/220066768-UniFi-Debian-Ubuntu-APT-howto
RUN echo "deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti" > /etc/apt/sources.list.d/100-ubnt.list  && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50

RUN apt -q update && apt install -y unifi

WORKDIR /var/lib/unifi

ENTRYPOINT ["/usr/bin/java", "-Xmx1024M", "-jar", "/usr/lib/unifi/lib/ace.jar"]
CMD ["start"]
