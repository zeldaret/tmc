@ Player at Text board after Mazaal
SCRIPT_START script_PlayerAtTextboard
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	DoPostScriptAction 0x0001
	MoveTo 0x00a0, 0x0078
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call SetPlayerActionNormal
SCRIPT_END
