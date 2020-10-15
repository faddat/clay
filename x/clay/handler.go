package clay

import (
	"fmt"

	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/faddat/clay/x/clay/keeper"
	"github.com/faddat/clay/x/clay/types"
	sdkerrors "github.com/cosmos/cosmos-sdk/types/errors"
)

// NewHandler ...
func NewHandler(k keeper.Keeper) sdk.Handler {
	return func(ctx sdk.Context, msg sdk.Msg) (*sdk.Result, error) {
		ctx = ctx.WithEventManager(sdk.NewEventManager())
		switch msg := msg.(type) {
    // this line is used by starport scaffolding # 1
		case types.MsgCreatePost:
			return handleMsgCreatePost(ctx, k, msg)
		case types.MsgSetPost:
			return handleMsgSetPost(ctx, k, msg)
		case types.MsgDeletePost:
			return handleMsgDeletePost(ctx, k, msg)
		default:
			errMsg := fmt.Sprintf("unrecognized %s message type: %T", types.ModuleName, msg)
			return nil, sdkerrors.Wrap(sdkerrors.ErrUnknownRequest, errMsg)
		}
	}
}
