@ Lon Lon Farm Malon in ranch house?
SCRIPT_START scriptMalonInside
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x000a
	EndBlock
script_08014F0C:
	CheckEntityInteractType
	JumpIfNot script_08014F0C
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_LON_LON, 0x0e
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	SetAnimation 0x000a
	Jump script_08014F0C
	.2byte 0x0000
