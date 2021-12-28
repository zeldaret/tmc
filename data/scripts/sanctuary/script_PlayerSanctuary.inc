@ Player in Sanctuary when trying clone ability for the first time
SCRIPT_START script_PlayerSanctuary
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	WalkNorth 0x0010
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
