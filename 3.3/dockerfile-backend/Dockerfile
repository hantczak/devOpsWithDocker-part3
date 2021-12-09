FROM golang:latest

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN go version

RUN go build

RUN go test ./...

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost

RUN useradd -m appuser

RUN chown appuser ./server

USER appuser

CMD ./server
