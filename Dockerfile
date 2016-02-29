FROM debian:jessie
MAINTAINER BitBuyIO <developer@bitbuy.io>
LABEL description="runing minergate console in docker by http://bit.ly/docker-minergate"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ca-certificates wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD https://minergate.com/download/deb-cli /deb-cli

RUN dpkg -i /deb-cli && \
    rm /deb-cli

ENV USER miner@bitbuy.io
ENV COIN -bcn

ENTRYPOINT minergate-cli -user $USER $COIN
