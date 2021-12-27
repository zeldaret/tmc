@ Sanctuary third time OBJECT_6A ?
SCRIPT_START script_Object6ASwordCharge8
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E930 0x0007
	OffsetEntityPosition 0x0000, 0xfff0
	EndBlock
	WaitForSyncFlagAndClear 0x00001000
	_0807E930 0x000b
	Call sub_0807F2D4
	_0807E930 0x000f
	SetSyncFlag 0x00010000
	WaitForSyncFlag 0x00000020
	_0807E930 0x0013
	Call sub_0807F2D4
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
