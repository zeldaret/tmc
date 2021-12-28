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
	Call sub_0807DF28
	FacePlayer
	CheckGlobalFlag 0x0042
	JumpIfNot script_08010858
	CheckGlobalFlag 0x0043
	JumpIfNot script_08010858
	CheckGlobalFlag 0x0044
	JumpIfNot script_08010858
	CheckGlobalFlag 0x0041
	JumpIfNot script_08010850
	MessageNoOverlap 0x3f39
	Jump script_080108BA
script_08010850:
	MessageNoOverlap 0x2c1b
	Jump script_080108BA
script_08010858:
	MessageNoOverlap 0x2c1a
	Jump script_080108BA
script_08010860:
	EndBlock
	SetPlayerIdle
	Call sub_0807DF38
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
	CheckGlobalFlag 0x0042
	JumpIfNot script_080108AA
	CheckGlobalFlag 0x0043
	JumpIfNot script_080108AA
	CheckGlobalFlag 0x0044
	JumpIfNot script_080108AA
	MessageNoOverlap 0x2c21
	Jump script_080108B2
script_080108AA:
.ifdef USA
	SetLocalFlag 0x00fa
.else
.ifdef DEMO_USA
	SetLocalFlag 0x00fa
.endif
.endif
	MessageNoOverlap 0x2c20
script_080108B2:
	WaitUntilTextboxCloses
	Call sub_0807F83C
script_080108BA:
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Jump script_08010804
