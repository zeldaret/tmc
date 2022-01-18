@ Outro Player goes to say goodbye to Minish Ezlo
SCRIPT_START script_PlayerSayGoodbye
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	WalkNorth 0x0020
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
