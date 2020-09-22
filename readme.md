# clay

**clay** is a blockchain application built using Cosmos SDK and Tendermint, generated with [Starport](https://github.com/tendermint/starport) and validated exclusively from embedded devices that live at the edge of the network.

Jacob Gadikian wrote about clay quite a bit, but did not always mention it by name:

[Blockchain Application TCO](https://blurt.world/blurt/@jacobgadikian/blockchain-application-tco)

[Baby Blockchains](https://github.com/regen-network/cosmosd/issues/17)

[Clay](https://blurt.world/blurt/@jacobgadikian/clay)

Clay will be considered "feature-complete" when:

* ~~Clay's device images are automatically generated~~

* ~~Zerotier is implemented~~

* ~~Clay implements a simple blog platform with no reward pool concept~~

* Clay supports cosmovisor and the cosmos sdk upgrade module

* documentation for a secure, rsync or syncthing-based git-free genesis ceremony has been created

* the genesis ceremony has been practiced

* edge validation has been demed safe in a few practice rounds


Clay launches as soon as it is feature complete, probably the first week of October, 2020.


## Get started

* Buy a 4GB Raspberry Pi and a 64GB MicroSD Card



## How is [clay](https://www.youtube.com/watch?v=eMJk4y9NGvE) [made](https://www.facebook.com/watch/?v=845703122288697)?

For now, Clay is just a set of commands

```bash
starport app github.com/faddat/clay
cd clay
starport add wasm
starport type post title body
```

It's made with the latest Starport from the development branch.

## Configure

Initialization parameters of your app are stored in `config.yml`.

### `accounts`

A list of user accounts created during genesis of your application.

| Key   | Required | Type            | Description                                       |
| ----- | -------- | --------------- | ------------------------------------------------- |
| name  | Y        | String          | Local name of the key pair                        |
| coins | Y        | List of Strings | Initial coins with denominations (e.g. "100coin") |

## Learn more

- [Starport](https://github.com/tendermint/starport)
- [Cosmos SDK documentation](https://docs.cosmos.network)
- [Cosmos Tutorials](https://tutorials.cosmos.network)
- [Channel on Discord](https://discord.gg/W8trcGV)
