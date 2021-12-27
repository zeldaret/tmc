@ Sanctuary OBJECT_6A Sword charging 3?
SCRIPT_START script_Object6ASwordCharge5
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E930 0x0004
	EndBlock
	WaitForSyncFlagAndClear 0x00000200
	_0807E930 0x0008
	Call sub_0807F2D4
	_0807E930 0x000c
	SetSyncFlag 0x00002000
	WaitForSyncFlag 0x00000020
	_0807E930 0x0010
	Call sub_0807F2D4
	DoPostScriptAction 0x0006
SCRIPT_END
