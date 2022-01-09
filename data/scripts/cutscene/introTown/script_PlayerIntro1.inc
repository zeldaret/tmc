@ Intro Hyrule Town Player
SCRIPT_START script_PlayerIntro1
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	SetEntityPositionRelative 0x00d8, 0x0398
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
