@ Player entering Mazaal
SCRIPT_START script_PlayerAtMazaal
	BeginBlock
	SetAnimationState 0x0000
	SetEntitySpeed 0x0140
	EndBlock
	MoveTo 0x00b8, 0x0094
	Wait 0x0008
	DoPostScriptAction 0x0000
	Wait 0x0008
	SetSyncFlag 0x00000001
SCRIPT_END
	.2byte 0x0000
