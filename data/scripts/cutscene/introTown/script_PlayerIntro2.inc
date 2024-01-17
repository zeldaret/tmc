@ Intro Hyrule Town Player 2
SCRIPT_START script_PlayerIntro2
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x00a0, 0x0278
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
