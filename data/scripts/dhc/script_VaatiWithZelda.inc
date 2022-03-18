@ DHC Vaati when with Zelda
SCRIPT_START script_VaatiWithZelda
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0000
	DoPostScriptAction 0x0014
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x003c
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetAnimationState 0x0004
	DoPostScriptAction 0x001c
	Call WaitForAnimDone
	DoPostScriptAction 0x0000
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetAnimationState 0x0004
	DoPostScriptAction 0x0014
SCRIPT_END
	.2byte 0x0000
