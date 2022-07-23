@ Sanctuary CUTSCENE_MISC_OBJECT Sword charging 3?
SCRIPT_START script_CutsceneMiscObjectSwordCharge6
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0005
	EndBlock
	WaitForSyncFlagAndClear 0x00000400
	SetAnimation 0x0009
	Call WaitForAnimDone
	SetAnimation 0x000d
	SetSyncFlag 0x00004000
	WaitForSyncFlag 0x00000020
	SetAnimation 0x0011
	Call WaitForAnimDone
	DoPostScriptAction 0x0006
SCRIPT_END
