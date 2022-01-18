@ Sanctuary OBJECT_6A Sword charging?
SCRIPT_START script_Object6ASwordChange1
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0000
	Call sub_0807F738
	EndBlock
	WaitForSyncFlag 0x00000040
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
