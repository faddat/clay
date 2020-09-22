package rest

import (
	"github.com/gorilla/mux"

	"github.com/cosmos/cosmos-sdk/client/context"
)

// RegisterRoutes registers clay-related REST handlers to a router
func RegisterRoutes(cliCtx context.CLIContext, r *mux.Router) {
  // this line is used by starport scaffolding
	r.HandleFunc("/clay/post", listPostHandler(cliCtx, "clay")).Methods("GET")
	r.HandleFunc("/clay/post", createPostHandler(cliCtx)).Methods("POST")
}
