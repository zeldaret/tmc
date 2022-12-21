@ Minish Woods Player at Bomb Minish
SCRIPT_START script_PlayerAtBombMinish
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	WalkSouth 0x0010
	MoveTo 0x0078, 0x0060
	SetAnimationState 0x0000
	Wait 0x000f
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	Call SetPlayerActionNormal
SCRIPT_END
