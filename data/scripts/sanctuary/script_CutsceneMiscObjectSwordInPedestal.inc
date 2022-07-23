@ Sanctuary CUTSCENE_MISC_OBJECT Sword in pedestal
SCRIPT_START script_CutsceneMiscObjectSwordInPedestal
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000080
	SetAnimation 0x000b
	Call WaitForAnimDone
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
