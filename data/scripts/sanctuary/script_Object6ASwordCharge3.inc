@ Sanctuary second time OBJECT_6A sword charging?
SCRIPT_START script_Object6ASwordCharge3
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0002
	Call sub_0807F738
	OffsetEntityPosition 0x0000, 0xfff0
	EndBlock
	WaitForSyncFlag 0x00000040
	DoPostScriptAction 0x0006
SCRIPT_END
