FROM ubuntu:latest

RUN apt-get update && apt-get install libogg0 wget -y

RUN wget https://www.rocketbroadcaster.com/streaming-audio-server/downloads/ubuntu-20.04/rsas_0.1.16-1_amd64.deb
RUN dpkg -i rsas*.deb

COPY default-config.xml .

EXPOSE 8000

ENTRYPOINT ["rsas"]
CMD ["-c", "default-config.xml"]
