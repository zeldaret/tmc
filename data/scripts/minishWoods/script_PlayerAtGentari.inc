@ Player at Gentari
SCRIPT_START script_PlayerAtGentari
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	WalkSouth 0x0010
	MoveTo 0x0078, 0x0058
	SetAnimationState 0x0000
	Wait 0x000f
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
