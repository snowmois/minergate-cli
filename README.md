# minergate-cli

Dockerized minergate console (minergate-cli) for CryptoNote mining which supports Bytecoin, Monero, DigitalNote and related Cryptocoins.

It dedicates for MinerGate Pool (http://bit.ly/docker-minergate) mining with ease on home computer.

## Usage

Start this image with the settings user (-e user=mail@gmail.com) and coin (-e coin=-bcn) as parameters. Everything gets passed to `minergate-cli`.

### Quickstart Example

```shell
docker run -d bitbuyio/minergate-cli
```

See `minergate-cli --help` for more parameters.

[![](https://badge.imagelayers.io/bitbuyio/minergate-cli:latest.svg)](https://imagelayers.io/?images=bitbuyio/minergate-cli:latest 'Get your own badge on imagelayers.io')
