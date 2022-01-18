@ Player at intro outside castle
SCRIPT_START script_PlayerAtIntroBusinessScrub4
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x0001
	WalkNorth 0x0010
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
