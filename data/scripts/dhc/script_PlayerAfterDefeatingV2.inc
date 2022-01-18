@ Player at Zelda after defeating V2
SCRIPT_START script_PlayerAfterDefeatingV2
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	SetAnimationState 0x0000
	DoPostScriptAction 0x000d
	DoPostScriptAction 0x0000
	WalkSouth 0x0010
	DoPostScriptAction 0x000c
	SetSyncFlag 0x00000004
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
