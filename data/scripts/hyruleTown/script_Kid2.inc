@ Hyrule Town Kid
SCRIPT_START script_Kid2
	BeginBlock
	DoPostScriptAction 0x0000
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock
script_080102F2:
	CheckEntityInteractType
	JumpIfNot script_080102F2
	SetPlayerIdle
	FacePlayer
	Call sub_0806265C
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_080102F2
	.2byte 0x0000
