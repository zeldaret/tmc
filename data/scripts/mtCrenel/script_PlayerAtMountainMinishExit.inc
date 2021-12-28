@ Player at Mountain Minish at exit
SCRIPT_START script_PlayerAtMountainMinishExit
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000d
	WalkSouth 0x0020
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
