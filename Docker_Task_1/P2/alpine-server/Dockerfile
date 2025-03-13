FROM alpine-bash
COPY ./server.sh /opt/myServer/
RUN apk add socat
WORKDIR /opt/myServer
CMD ["bash", "./server.sh"]
