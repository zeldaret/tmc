@ Intro Assembly Player
SCRIPT_START script_PlayerEnters
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	DoPostScriptAction 0x0001
	MoveTo 0x00b8, 0x0090
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000040
	DoPostScriptAction 0x0001
	MoveTo 0x0088, 0x0078
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	Wait 0x000f
	SetSyncFlag 0x00000020
	Call SetPlayerActionNormal
SCRIPT_END
	.2byte 0x0000
