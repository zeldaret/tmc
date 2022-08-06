@ Hyrule Town Goron Merchant
SCRIPT_START script_GoronMerchant
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807E9D4
	Call SetPriorityMessage
	Call sub_08069684
	EndBlock
script_080107F2:
	EndBlock
	BeginBlock
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_080107F2
	Call sub_080696B0
script_08010804:
	EndBlock
	BeginBlock
	CheckPlayerInRegion2 0x3030
	JumpIfNot script_080107F2
	HasRoomItemForSale
	JumpIf script_08010860
	CheckEntityInteractType
	JumpIfNot script_08010804
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	FacePlayer
	CheckGlobalFlag GORON_KAKERA_L
	JumpIfNot script_08010858
	CheckGlobalFlag GORON_KAKERA_M
	JumpIfNot script_08010858
	CheckGlobalFlag GORON_KAKERA_R
	JumpIfNot script_08010858
	CheckGlobalFlag GORON_KAKERA_LV5
	JumpIfNot script_08010850
	MessageNoOverlap TEXT_TINGLE, 0x39
	Jump script_080108BA
script_08010850:
	MessageNoOverlap TEXT_STOCKWELL, 0x1b
	Jump script_080108BA
script_08010858:
	MessageNoOverlap TEXT_STOCKWELL, 0x1a
	Jump script_080108BA
script_08010860:
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenu
	FacePlayer
	Call sub_08069660
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_080108B2
	Call GoronMerchant_TryToBuyKinstone
	JumpIfNot script_080108B2
	WaitPlayerGetItem
	WaitUntilTextboxCloses
	FaceAwayFromPlayer
	CheckGlobalFlag GORON_KAKERA_L
	JumpIfNot script_080108AA
	CheckGlobalFlag GORON_KAKERA_M
	JumpIfNot script_080108AA
	CheckGlobalFlag GORON_KAKERA_R
	JumpIfNot script_080108AA
	MessageNoOverlap TEXT_STOCKWELL, 0x21
	Jump script_080108B2
script_080108AA:
.ifdef USA
	SetLocalFlag 0x00fa
.else
.ifdef DEMO_USA
	SetLocalFlag 0x00fa
.endif
.endif
	MessageNoOverlap TEXT_STOCKWELL, 0x20
script_080108B2:
	WaitUntilTextboxCloses
	Call ScriptCommand_PlayerDropHeldObject
script_080108BA:
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Jump script_08010804
