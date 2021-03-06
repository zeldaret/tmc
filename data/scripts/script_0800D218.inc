SCRIPT_START script_0800D218
	StartScript 
	CheckInventory1 0x0041
	JumpIf script_0800D24C
	CheckLocalFlag 0x007e
	JumpIf script_0800D242
	_0807EF80 0x0008
	StopScript 
	WaitForSomething2 0x00000010
	_0807EF80 0x0007
	WaitForSomething2 0x00000010
SCRIPT_END
