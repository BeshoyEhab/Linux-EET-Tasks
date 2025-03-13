## Part 1

1. docker pull busybox
2. docker run -it alpine:edge
3. docker ps
4. docker stop 5919f9c01c17
5. docker images
6. docker rmi alpine:edge

---

1. docker run -it --name ubuntu-test ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
2. docker exec ubuntu-test apt update
3. docker exec ubuntu-test apt upgrade
4. docker exec ubuntu-test apt install curl

---

## Part 2

> I use command `docker build -t alpine-<bash/server> .`

alpine-bash/Dockerfile

```Dockerfile
FROM alpine
RUN apk add bash
```

alpine-server/Dockerfile

```Dockerfile
FROM alpine-bash
COPY ./server.sh /opt/myServer/
RUN apk add socat
WORKDIR /opt/myServer
CMD ["bash", "./server.sh"]
```
