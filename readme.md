# clay

**clay** is a blockchain application built using Cosmos SDK and Tendermint, generated with [Starport](https://github.com/tendermint/starport) and validated exclusively from embedded devices that live at the edge of the network.

Jacob Gadikian wrote about clay quite a bit, but did not always mention it by name:

[Blockchain Application TCO](https://blurt.world/blurt/@jacobgadikian/blockchain-application-tco)

[Baby Blockchains](https://github.com/regen-network/cosmosd/issues/17)

[Clay](https://blurt.world/blurt/@jacobgadikian/clay)

**Clay will be considered "feature-complete" when:**

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

## Join the network and help test Zerotier and Edge Validation:

* Although clay lives in my home, behind NAT, you can flash this device image to a 4gb Raspberry Pi 4:
https://pipelines.actions.githubusercontent.com/ZqygT95s58v7khEXwqGaZvoZg8C8IkdFYs7rJs9pORZs6l1Uua/_apis/pipelines/1/runs/43/signedartifactscontent?artifactName=clay%20PI&urlExpires=2020-09-22T13%3A26%3A22.1855967Z&urlSigningMethod=HMACV1&urlSignature=pTo9nJSB5xcRu6IMbSDDez5PwSamg2wNISvB%2BauHNto%3D


* Login as user ubuntu password ubuntu


Install ZeroTier
```
curl -s https://install.zerotier.com | sudo bash
```

join the ZeroTier network
```
zerotier-cli join e4da7455b26d23be
```

this start command:
```
clayd start --p2p.persistent_peers 0cea9d958a6228ce0c5b1c6a6533a49a435a4948@172.24.32.183:26656
```



## How is [clay](https://www.youtube.com/watch?v=eMJk4y9NGvE) [made](https://www.facebook.com/watch/?v=845703122288697)?

For now, Clay is just a set of commands

```bash
starport app github.com/faddat/clay
cd clay
starport add wasm
starport type post title body
```


## How can I start my own clay testnet?

```
clayd init --chain-id=belikewater testing
clayd add-genesis-account validator 10000000token,100000000stake
clayd gentx --name validator
clayd collect-gentxs
clayd start
```

It's made with the latest Starport from the development branch.


## Learn more

- [Starport](https://github.com/tendermint/starport)
- [Cosmos SDK documentation](https://docs.cosmos.network)
- [Cosmos Tutorials](https://tutorials.cosmos.network)
- [Channel on Discord](https://discord.gg/W8trcGV)
