@ Intro Hyrule Castle Player
SCRIPT_START script_PlayerIntroCastle
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	MoveTo 0x01e8, 0x0050
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000400
	Call SetPlayerActionNormal
SCRIPT_END
