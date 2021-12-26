@ Sanctuary OBJECT_6A Sword in pedestal
SCRIPT_START script_Object6ASwordInPedestal
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E930 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000080
	_0807E930 0x000b
	Call sub_0807F2D4
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
