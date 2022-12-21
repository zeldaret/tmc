@ Player at Festari
SCRIPT_START script_PlayerAtFestari
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x00e8, 0x0068
	SetAnimationState 0x0000
	Wait 0x000f
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
