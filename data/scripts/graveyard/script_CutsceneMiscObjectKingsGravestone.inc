@ Graveyard CUTSCENE_MISC_OBJECT Kings gravestone? or King ghost representation?
SCRIPT_START script_CutsceneMiscObjectKingsGravestone
	BeginBlock
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0007
	Wait 0x003c
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	MoveTo 0x0118, 0x0060
	SetSyncFlag 0x00000002
	DoPostScriptAction 0x0006
SCRIPT_END
