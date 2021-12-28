@ DHC Vaati when with Zelda
SCRIPT_START script_VaatiWithZelda
	BeginBlock
	DoPostScriptAction 0x0007
	_0807EB44 0x0000
	DoPostScriptAction 0x0014
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x003c
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807EB44 0x0004
	DoPostScriptAction 0x001c
	Call sub_0807F2D4
	DoPostScriptAction 0x0000
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	_0807EB44 0x0004
	DoPostScriptAction 0x0014
SCRIPT_END
	.2byte 0x0000
