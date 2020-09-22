module github.com/faddat/clay

go 1.15


replace github.com/cosmwasm/wasmd => github.com/faddat/wasmd
replace github.com/cosmwasm/go-cosmwasm => github.com/faddat/go-cosmwasm


require (
	github.com/cosmwasm/wasmd patch-1
	github.com/cosmwasm/go-cosmwasm lowercase
	github.com/cosmos/cosmos-sdk v0.39.1
	github.com/golang/mock v1.4.3 // indirect
	github.com/google/uuid v1.0.0
	github.com/gorilla/mux v1.7.4
	github.com/onsi/ginkgo v1.8.0 // indirect
	github.com/onsi/gomega v1.5.0 // indirect
	github.com/spf13/afero v1.2.2 // indirect
	github.com/spf13/cobra v1.0.0
	github.com/spf13/viper v1.7.0
	github.com/tendermint/go-amino v0.15.1
	github.com/tendermint/tendermint v0.33.6
	github.com/tendermint/tm-db v0.5.1
	golang.org/x/net v0.0.0-20200520182314-0ba52f642ac2 // indirect
)
