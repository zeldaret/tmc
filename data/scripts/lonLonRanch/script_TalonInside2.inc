@ Lon Lon Ranch Talon inside
SCRIPT_START script_TalonInside2
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08014EE0:
	CheckEntityInteractType
	JumpIfNot script_08014EE0
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_LON_LON, 0x0d
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08014EE0
	.2byte 0x0000
