FROM node:16-alpine3.11 as build

WORKDIR /app

COPY . .

RUN npm install && npm update && npm run build

FROM alpine:latest

WORKDIR /root/

RUN apk add --update nodejs npm && npm install -g serve

COPY --from=build ./app/build ./build

CMD serve -s -l 5000 build 

EXPOSE 5000
