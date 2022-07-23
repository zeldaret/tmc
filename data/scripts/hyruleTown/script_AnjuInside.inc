@ Hyrule Town Anju inside
SCRIPT_START script_AnjuInside
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_08010132:
	CheckEntityInteractType
	JumpIfNot script_08010132
	SetPlayerIdle
	FacePlayer
	MessageFromTarget TEXT_CAFE, 0x22
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08010132
