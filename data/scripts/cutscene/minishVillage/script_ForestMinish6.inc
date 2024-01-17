@ Minish Village Intro Forest Minish 2
SCRIPT_START script_ForestMinish6
	BeginBlock
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x000f
	Call DeleteHitbox
	EndBlock
	WaitForSyncFlagAndClear 0x00000800
	DoPostScriptAction 0x0007
	SetAnimationState 0x0002
	DoPostScriptAction 0x0001
	MoveTo 0x01a8, 0x0330
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00001000
	WaitForSyncFlagAndClear 0x00000800
	SetEntitySpeed 0x0200
	DoPostScriptAction 0x000f
	MoveTo 0x01f8, 0x0348
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00001000
	WaitForSyncFlagAndClear 0x00000800
	SetEntitySpeed 0x0300
	DoPostScriptAction 0x000f
	MoveTo 0x0178, 0x0328
	SetSyncFlag 0x00001000
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
