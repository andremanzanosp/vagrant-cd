FROM golang

RUN mkdir -p /docker-goapp
WORKDIR /docker-goapp

RUN go get github.com/radovskyb/watcher/...

EXPOSE 8080

CMD make start
