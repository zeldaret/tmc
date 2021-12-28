@ Intro Ceremony Guard top right
SCRIPT_START script_GuardTopRight
	ClearSyncFlag 0x00020000
	SetSyncFlag 0x00040000
	WaitForSyncFlagAndClear 0x00020000
	_0807E930 0x0005
	_0807EB44 0x0002
	_0807EC94 0x0020
	_0807EB44 0x0004
	_0807E930 0x0006
	_0807ECC4 0x0010
	_0807E930 0x0002
	SetSyncFlag 0x00040000
	WaitForSyncFlagAndClear 0x00020000
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807E930 0x0012
	PlaySound SFX_EM_MOBLIN_SPEAR
	SetSyncFlag 0x00040000
	WaitForSyncFlagAndClear 0x00020000
	_0807E930 0x0014
	SetEntitySpeed 0x0100
	_0807EDD4 0x0208, 0x0098
	SetEntitySpeed 0x0040
	_0807EEF4 0x0000, 0x0010
	_0807E930 0x0013
	SetSyncFlag 0x00040000
	WaitForSyncFlagAndClear 0x00020000
	DoPostScriptAction 0x000d
	_0807E930 0x0014
	SetEntitySpeed 0x0020
	_0807EEF4 0x0000, 0xfff0
	_0807E930 0x0013
	DoPostScriptAction 0x0010
	SetSyncFlag 0x00040000
	WaitForSyncFlagAndClear 0x00020000
	Call sub_0807F3C8
	_0807E930 0x0014
	SetEntitySpeed 0x0400
	SetEntityDirection 0x0002
	_0807EC1C 0x003c
	SetSyncFlag 0x00040000
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
