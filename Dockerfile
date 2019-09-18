FROM golang:latest
EXPOSE 53/udp
COPY . $GOPATH/src/github.com/joncooperworks/dnsd
WORKDIR $GOPATH/src/github.com/joncooperworks/dnsd
RUN go get github.com/tools/godep
RUN godep restore
RUN go build -o /usr/bin/dnsd main.go
CMD /usr/bin/dnsd
