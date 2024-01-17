@ Minish Village Intro Forest Minish 5
SCRIPT_START script_ForestMinish9
	BeginBlock
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x000f
	Call DeleteHitbox
	EndBlock
	WaitForSyncFlagAndClear 0x00020000
	DoPostScriptAction 0x0007
	MoveTo 0x0268, 0x0338
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00040000
	WaitForSyncFlagAndClear 0x00020000
	SetEntitySpeed 0x0200
	DoPostScriptAction 0x000f
	MoveTo 0x0218, 0x0350
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00040000
	WaitForSyncFlagAndClear 0x00020000
	SetEntitySpeed 0x0300
	DoPostScriptAction 0x000f
	MoveTo 0x02a8, 0x0328
	SetSyncFlag 0x00040000
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
