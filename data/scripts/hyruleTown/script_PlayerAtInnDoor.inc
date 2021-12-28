@ Hyrule Town player tries to enter Inn
SCRIPT_START script_PlayerAtInnDoor
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	WalkSouth 0x0010
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
