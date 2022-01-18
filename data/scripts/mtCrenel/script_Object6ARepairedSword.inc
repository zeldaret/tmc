@ Mines OBJECT_6A Repaired Sword on Table?
SCRIPT_START script_Object6ARepairedSword
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000020
	DoPostScriptAction 0x0007
	WaitForSyncFlagAndClear 0x00000020
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
