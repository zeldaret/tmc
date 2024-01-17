@ Player at Graveyard King Gustaf
SCRIPT_START script_PlayerAtKingGustav
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	DoPostScriptAction 0x0001
	MoveTo 0x0118, 0x0060
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
