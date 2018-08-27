FROM golang:1.10.3

WORKDIR /go/src/greeter_server

COPY helloworld .

RUN go get -d -v ./...
#RUN go install -v ./...

EXPOSE 50051

CMD ["greeter_server"]
