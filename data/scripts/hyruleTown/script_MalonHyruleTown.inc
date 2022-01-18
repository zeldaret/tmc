@ Hyrule Town Malon
SCRIPT_START script_MalonHyruleTown
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x000e
	EndBlock
	Call sub_08065914
script_08014F4A:
	CheckEntityInteractType
	JumpIfNot script_08014F4A
	SetPlayerIdle
	Call sub_0807DF28
	FacePlayer
	DoPostScriptAction 0x0000
	BeginBlock 
	MessageNoOverlap 0x3b0b
	CallWithArg sub_0807F854, 0x00010064
	EndBlock
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08014FA6
	HasRupees 0x0064
	JumpIfNot script_08014F9A
	CheckBottleContaining 0x0020
	JumpIfNot script_08014FA2
	ModRupees 0xff9c
	GivePlayerItem 0x0022
	WaitPlayerGetItem 
	MessageNoOverlap 0x3b11
	Jump script_08014FA6
script_08014F9A:
	MessageNoOverlap 0x3b0e
	Jump script_08014FA6
script_08014FA2:
	MessageNoOverlap 0x3b0f
script_08014FA6:
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
	SetAnimationState 0x0004
	SetAnimation 0x000e
	Jump script_08014F4A
