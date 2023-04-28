@ Graveyard GhostBrothers
SCRIPT_START script_GhostBrothers
	BeginBlock
	Call GhostBrothers_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	EndBlock
script_0800975A:
	CheckEntityInteractType
	JumpIfNot script_0800975A
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	Call sub_08065F64
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800975A
	.2byte 0x0000
