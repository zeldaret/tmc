@ Outside Castle Carpenter
@ Hyrule Town Carpenter
SCRIPT_START script_CarpenterOutsideTown
	BeginBlock
	Call Carpenter_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetIntVariable 0x00000000
	Call sub_080672B0
	EndBlock
script_08009592:
	CheckEntityInteractType
	JumpIfNot script_08009592
	SetPlayerIdle
	FacePlayer
	SetIntVariable 0x00000004
	Call sub_080672B0
	Call sub_080672C8
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	SetAnimationState 0x0004
	SetIntVariable 0x00000000
	Call sub_080672B0
	Jump script_08009592
	.2byte 0x0000
