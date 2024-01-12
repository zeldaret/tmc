@ Player at Melari
SCRIPT_START script_PlayerAtMelari
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	MoveTo 0x0170, 0x0140
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000008
	Call SetPlayerActionNormal
SCRIPT_END
