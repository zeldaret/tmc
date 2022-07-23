@ BED_COVER Bed at Simons
@ also at Inn
@ also at Links house later
SCRIPT_START script_BedAtSimons
	BeginBlock
	SetIntVariable 0x00000000
	DoPostScriptAction 0x0001
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	BeginBlock
	SetIntVariable 0x00000001
	DoPostScriptAction 0x0001
	EndBlock
SCRIPT_END
