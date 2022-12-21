@ Player at Rem
SCRIPT_START script_PlayerAtRem
	BeginBlock
	SetAnimationState 0x0006
	SetEntitySpeed 0x0140
	EndBlock
	MoveTo 0x00a8, 0x0060
	Wait 0x0008
	DoPostScriptAction 0x0000
	Wait 0x0008
	DoPostScriptAction 0x0004
	Wait 0x000f
	SetSyncFlag 0x00000004
SCRIPT_END
	.2byte 0x0000
