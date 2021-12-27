@ Graveyard OBJECT_6A Kings gravestone? or King ghost representation?
SCRIPT_START script_Object6AKingsGravestone
	BeginBlock
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0007
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	_0807EDD4 0x0118, 0x0060
	SetSyncFlag 0x00000002
	DoPostScriptAction 0x0006
SCRIPT_END
