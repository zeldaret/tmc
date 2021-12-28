@ Player cannot enter something to the left
SCRIPT_START script_PlayerCannotEnter
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	WalkEast 0x0010
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
