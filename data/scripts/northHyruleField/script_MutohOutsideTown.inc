@ Outside Castle Mutoh
SCRIPT_START script_MutohOutsideTown
	BeginBlock
	Call Mutoh_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08009512:
	CheckEntityInteractType
	JumpIfNot script_08009512
	SetPlayerIdle
	DoPostScriptAction 0x0001
	FacePlayer
	Call sub_080670B4
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Jump script_08009512
	.2byte 0x0000
