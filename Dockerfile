FROM debian
MAINTAINER BitBuyIO <developer@bitbuy.io>
LABEL description="runing minergate console in docker by http://bit.ly/docker-minergate"

RUN apt-get update && \
    apt-get install -y ca-certificates wget && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://minergate.com/download/deb-cli && \
    dpkg -i deb-cli
    
ENV USER miner@bitbuy.io
ENV COIN -bcn

ENTRYPOINT minergate-cli 
CMD -user $USER $COIN
