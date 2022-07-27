@ Sanctuary CUTSCENE_MISC_OBJECT Sword charging 3?
SCRIPT_START script_CutsceneMiscObjectSwordCharge5
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0004
	EndBlock
	WaitForSyncFlagAndClear 0x00000200
	SetAnimation 0x0008
	Call WaitForAnimDone
	SetAnimation 0x000c
	SetSyncFlag 0x00002000
	WaitForSyncFlag 0x00000020
	SetAnimation 0x0010
	Call WaitForAnimDone
	DoPostScriptAction 0x0006
SCRIPT_END
