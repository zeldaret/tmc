@ Sanctuary OBJECT_6A Sword charging 3?
SCRIPT_START script_Object6ASwordCharge6
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E930 0x0005
	EndBlock
	WaitForSyncFlagAndClear 0x00000400
	_0807E930 0x0009
	Call sub_0807F2D4
	_0807E930 0x000d
	SetSyncFlag 0x00004000
	WaitForSyncFlag 0x00000020
	_0807E930 0x0011
	Call sub_0807F2D4
	DoPostScriptAction 0x0006
SCRIPT_END
