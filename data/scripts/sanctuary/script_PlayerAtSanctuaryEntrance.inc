@ Player at Sanctuary Entrance
SCRIPT_START script_PlayerAtSanctuaryEntrance
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x0088, 0x0068
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	Wait 0x001e
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
