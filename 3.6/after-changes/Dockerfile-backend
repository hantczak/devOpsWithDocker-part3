FROM golang:1.16.4-alpine3.13 as build

WORKDIR /usr/app

COPY . .

RUN go build

FROM scratch

COPY --from=build /usr/app/server /

EXPOSE 8080

ENTRYPOINT ./server
