FROM --platform="arm/v5" debian:stable

RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get -y install motion

RUN mkdir -p /etc/motion/
COPY motion.conf /etc/motion/motion.conf

RUN mkdir -p /home/pi/motion/app
RUN mkdir -p /home/pi/motion/data

EXPOSE 8083
ENTRYPOINT ["motion", "-c /etc/motion/motion.conf"]
