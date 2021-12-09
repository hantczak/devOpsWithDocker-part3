FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY . /usr/src/app

ENV REACT_APP_BACKEND_URL http://localhost:8080/

RUN apt-get update && \
	apt-get install -y curl && \
	curl -sL https://deb.nodesource.com/setup_14.x | bash && \
	apt-get install -y nodejs && \
	npm install && \
	npm run build && \
	npm install -g serve && \
	useradd -m appuser && \
	rm -rf /var/lib/apt/lists/* && \
	apt-get purge -y --auto-remove curl

USER appuser

EXPOSE 5000

CMD serve -s -l 5000 build
