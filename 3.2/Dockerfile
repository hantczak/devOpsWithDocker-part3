FROM ubuntu

WORKDIR /tmp

COPY ./script.sh ./

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y git curl && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" && \
    apt-get install -y docker-ce docker-ce-cli containerd.io

CMD bash script.sh
