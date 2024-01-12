@ Intro Hyrule Town Player 3
SCRIPT_START script_PlayerIntro3
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x0078, 0x01c0
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
