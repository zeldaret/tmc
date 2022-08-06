@ Hyrule Town Pita
SCRIPT_START script_Pita
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_080106BE:
	CheckEntityInteractType
	JumpIfNot script_080106BE
	SetPlayerIdle
	FacePlayer
	Call WaitForAnimDone
	DoPostScriptAction 0x0000
	HasRoomItemForSale
	JumpIf script_080106E0
	MessageNoOverlap TEXT_BAKERY, 0x07
	Jump script_08010726
script_080106E0:
	Call RemoveAllBakedGoods
	CallWithArg ScriptCommand_SaleItemConfirmMessage, 0x00000000
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08010726
	WaitUntilTextboxCloses
	BuyItem ITEM_NONE, 0x0000
	JumpIf script_0801070C
	MessageNoOverlap TEXT_BAKERY, 0x04
	Jump script_08010726
script_0801070C:
	WaitPlayerGetItem
	ModHealth 0x0008
	Call sub_08062EDC
	JumpIf script_08010724
	MessageNoOverlap TEXT_BAKERY, 0x06
	Jump script_08010726
script_08010724:
	WaitPlayerGetItem
script_08010726:
	WaitUntilTextboxCloses
	EnablePlayerControl
	DoPostScriptAction 0x0001
	Jump script_080106BE
	.2byte 0x0000
