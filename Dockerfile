FROM ubuntu

RUN apt-get update && apt-get install -yq socat

EXPOSE 2375

CMD socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
