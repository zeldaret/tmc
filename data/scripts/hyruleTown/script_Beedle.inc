@ Hyrule Town Beedle
SCRIPT_START script_Beedle
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0000
	DoPostScriptAction 0x000a
	Call SetPriorityMessage
	EndBlock
script_08010502:
	CheckEntityInteractType
	JumpIfNot script_08010502
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000008
	CheckRoomFlag 0x000e
	JumpIf script_0801052E
	SetRoomFlag 0x000e
	MessageNoOverlap TEXT_PICOLYTE, 0x10
	WaitUntilTextboxCloses
script_0801052E:
	Call Beedle_GetObjectType
	JumpTable script_08010544, script_08010558, script_08010570, script_08010570, script_0801054C, script_08010564, script_08010570
script_08010544:
	MessageNoOverlap TEXT_PICOLYTE, 0x0d
	Jump script_080105E0
script_0801054C:
	CheckGlobalFlag DRUG_3
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010558:
	CheckGlobalFlag DRUG_2
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010564:
	CheckGlobalFlag DRUG_1
	JumpIfNot script_080105DC
	Jump script_08010570
script_08010570:
	Call Beedle_ConfirmBuyItem
	CallWithArg ScriptCommand_SaleItemConfirmMessage, 0x00000000
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_080105E0
	CallWithArg ScriptCommand_CheckShopItemPrice, 0x00000000
	JumpIfNot script_080105C4
	CheckBottleContaining ITEM_BOTTLE_EMPTY
	JumpIfNot script_080105CC
	Call Beedle_IsBottleInInventory
	JumpIf script_080105D4
	MessageNoOverlap TEXT_PICOLYTE, 0x07
	WaitUntilTextboxCloses
	CallWithArg ScriptCommand_BuyShopItem, 0x00000000
	WaitPlayerGetItem 
	WaitUntilTextboxCloses
	MessageNoOverlap TEXT_PICOLYTE, 0x0c
	Jump script_080105E0
script_080105C4:
	MessageNoOverlap TEXT_PICOLYTE, 0x09
	Jump script_080105E0
script_080105CC:
	MessageNoOverlap TEXT_PICOLYTE, 0x0a
	Jump script_080105E0
script_080105D4:
	MessageNoOverlap TEXT_PICOLYTE, 0x0b
	Jump script_080105E0
script_080105DC:
	MessageNoOverlap TEXT_PICOLYTE, 0x0e
script_080105E0:
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_08010502
	.2byte 0x0000
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08010602:
	CheckEntityInteractType
	JumpIfNot script_08010602
	SetPlayerIdle
	FacePlayer
	MessageFromTarget TEXT_EMPTY, 0x01
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	Jump script_08010602
