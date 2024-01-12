@ Intro Hyrule Town Player 4
SCRIPT_START script_PlayerIntro4
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x0108, 0x01c8
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
