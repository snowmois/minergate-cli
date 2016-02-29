FROM debian:jessie
MAINTAINER BitBuyIO <developer@bitbuy.io>
LABEL description="runing minergate console in docker by http://bit.ly/docker-minergate"

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Update package list before installing ones
RUN apt-get update && \
    apt-get install -y locales
    
RUN dpkg-reconfigure locales && \
  locale-gen C.UTF-8 && \
  /usr/sbin/update-locale LANG=C.UTF-8
# Install needed default locale for Makefly
RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && \
  locale-gen

RUN apt-get install -y --no-install-recommends apt-utils && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    ca-certificates wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD https://minergate.com/download/deb-cli /deb-cli

RUN dpkg -i /deb-cli && \
    rm /deb-cli

ENV USER miner@bitbuy.io
ENV COIN -bcn
ENV CORE 1

ENTRYPOINT minergate-cli -user $USER $COIN $CORE
