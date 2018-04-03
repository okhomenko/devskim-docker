FROM debian:jessie-slim

ARG VERSION=0.1.9

RUN apt-get update \
 && apt-get install -y wget \
 && wget https://github.com/Microsoft/DevSkim/releases/download/${VERSION}/devskim-${VERSION}_amd64.deb \
 && ( dpkg -i devskim-${VERSION}_amd64.deb || exit 0 ) \
 && apt-get install -f -y \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /usrapp
CMD [ "devskim", "analyze", "." ]