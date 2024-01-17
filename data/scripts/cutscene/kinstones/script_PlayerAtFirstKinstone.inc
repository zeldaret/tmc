@ Hyrule Town Kinstone cutscene Player
SCRIPT_START script_PlayerAtFirstKinstone
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	DoPostScriptAction 0x0000
	SetAnimationState 0x0006
	DoPostScriptAction 0x0004
	Wait 0x003c
	DoPostScriptAction 0x0001
	MoveTo 0x01f8, 0x0338
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
