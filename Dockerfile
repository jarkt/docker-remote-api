FROM alpine

RUN apk update && apk add socat

EXPOSE 2375

COPY run.sh /
ENTRYPOINT ["/run.sh"]
