package rest

import (
	"github.com/gorilla/mux"

	"github.com/cosmos/cosmos-sdk/client/context"
)

// RegisterRoutes registers clay-related REST handlers to a router
func RegisterRoutes(cliCtx context.CLIContext, r *mux.Router) {
  // this line is used by starport scaffolding # 1
		r.HandleFunc("/clay/post", createPostHandler(cliCtx)).Methods("POST")
		r.HandleFunc("/clay/post", listPostHandler(cliCtx, "clay")).Methods("GET")
		r.HandleFunc("/clay/post/{key}", getPostHandler(cliCtx, "clay")).Methods("GET")
		r.HandleFunc("/clay/post", setPostHandler(cliCtx)).Methods("PUT")
		r.HandleFunc("/clay/post", deletePostHandler(cliCtx)).Methods("DELETE")

		
}
