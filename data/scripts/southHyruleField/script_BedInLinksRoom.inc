@ Bed in links room
@ also Bed in Hyrule Castle
SCRIPT_START script_BedInLinksRoom
	BeginBlock
	SetIntVariable 0x00000002
	DoPostScriptAction 0x0001
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	BeginBlock
	SetIntVariable 0x00000003
	DoPostScriptAction 0x0001
	EndBlock
SCRIPT_END
