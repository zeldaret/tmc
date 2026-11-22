@ Player cannot enter something to the left
script_PlayerCannotEnter::
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	WalkEast 0x0010
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
	EndScript
	.2byte 0x0000
