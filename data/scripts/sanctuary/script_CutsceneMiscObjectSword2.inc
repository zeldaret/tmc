@ Sanctuary second time CUTSCENE_MISC_OBJECT sword?
SCRIPT_START script_CutsceneMiscObjectSword2
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0009
	EndBlock
	WaitForSyncFlagAndClear 0x00000080
	SetAnimation 0x000c
	Call WaitForAnimDone
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
