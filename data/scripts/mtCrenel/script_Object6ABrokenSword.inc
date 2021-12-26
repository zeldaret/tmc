@ Mines OBJECT_6A Broken Sword on Table?
SCRIPT_START script_Object6ABrokenSword
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
script_0800D242:
	DoPostScriptAction 0x0007
	_0807E930 0x0003
SCRIPT_END
script_0800D24C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
