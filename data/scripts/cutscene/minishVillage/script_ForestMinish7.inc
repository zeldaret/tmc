@ Minish Village Intro Forest Minish 3
SCRIPT_START script_ForestMinish7
	BeginBlock
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x000f
	Call sub_0807F338
	EndBlock
	WaitForSyncFlagAndClear 0x00002000
	DoPostScriptAction 0x0007
	_0807EDD4 0x0258, 0x0330
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00004000
	WaitForSyncFlagAndClear 0x00002000
	SetEntitySpeed 0x0200
	DoPostScriptAction 0x000f
	_0807EDD4 0x0218, 0x0340
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00004000
	WaitForSyncFlagAndClear 0x00002000
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	SetSyncFlag 0x00004000
	WaitForSyncFlagAndClear 0x00002000
	SetEntitySpeed 0x0300
	DoPostScriptAction 0x000f
	_0807EDD4 0x0288, 0x02d8
	SetSyncFlag 0x00004000
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
