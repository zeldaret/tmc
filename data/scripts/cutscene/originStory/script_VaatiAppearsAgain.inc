@ Outside Castle Vaati
SCRIPT_START script_VaatiAppearsAgain
	BeginBlock
	DoPostScriptAction 0x0008
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Call sub_0807F354
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	Call sub_08066C94
	Wait 0x00e9
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x001e
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	Wait 0x0014
	_0807EB44 0x0000
	DoPostScriptAction 0x001c
	Call sub_0807F2D4
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	PlaySound SFX_F5
	DoPostScriptAction 0x001f
	SetEntitySpeed 0x0200
	DoPostScriptAction 0x000d
	DoPostScriptAction 0x0000
	_0807ECC4 0x0030
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x0006
SCRIPT_END
