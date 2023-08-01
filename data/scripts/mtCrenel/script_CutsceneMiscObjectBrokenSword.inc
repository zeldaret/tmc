@ Mines CUTSCENE_MISC_OBJECT Broken Sword on Table?
SCRIPT_START script_CutsceneMiscObjectBrokenSword
	BeginBlock
	CheckInventory1 ITEM_FIRE_ELEMENT
	JumpIf script_0800D24C
	CheckLocalFlag OYAKATA_DEMO
	JumpIf script_0800D242
	DoPostScriptAction 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0007
	WaitForSyncFlagAndClear 0x00000010
SCRIPT_END
script_0800D242:
	DoPostScriptAction 0x0007
	SetAnimation 0x0003
SCRIPT_END
script_0800D24C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
