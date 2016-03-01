# minergate-cli

Dockerized minergate console (minergate-cli) for CryptoNote mining which supports Bytecoin, Monero, DigitalNote and related Cryptocoins.

It dedicates for MinerGate Pool (http://bit.ly/docker-minergate) mining with ease on home computer.

## Usage

Start this image with the settings user and coin as parameters. Everything gets passed to `minergate-cli`.

### Example

```shell
docker run -d bitbuyio/minergate-cli -user miner@bitbuy.io
```

See `minergate-cli --help` for more parameters.

[![](https://badge.imagelayers.io/bitbuyio/minergate-cli:latest.svg)](https://imagelayers.io/?images=bitbuyio/minergate-cli:latest 'Get your own badge on imagelayers.io')
