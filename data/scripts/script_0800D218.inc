SCRIPT_START script_0800D218
	BeginBlock 
	CheckInventory1 0x0041
	JumpIf script_0800D24C
	CheckLocalFlag 0x007e
	JumpIf script_0800D242
	DoPostScriptAction 0x0008
	EndBlock 
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0007
	WaitForSomething2 0x00000010
SCRIPT_END
