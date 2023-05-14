@ Hyrule Town Mutoh
SCRIPT_START script_MutohInMill
	BeginBlock
	Call Mutoh_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_0800954E:
	CheckEntityInteractType
	JumpIfNot script_0800954E
	SetPlayerIdle
	DoPostScriptAction 0x0001
	FacePlayer
	Call sub_080670E4
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Jump script_0800954E
	.2byte 0x0000
