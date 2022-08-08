@ Sanctuary second time CUTSCENE_MISC_OBJECT sword charging?
SCRIPT_START script_CutsceneMiscObjectSwordCharge7
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0006
	OffsetEntityPosition 0, -16
	EndBlock
	WaitForSyncFlagAndClear 0x00000800
	SetAnimation 0x000a
	Call WaitForAnimDone
	SetAnimation 0x000e
	SetSyncFlag 0x00008000
	WaitForSyncFlag 0x00000020
	SetAnimation 0x0012
	Call WaitForAnimDone
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
