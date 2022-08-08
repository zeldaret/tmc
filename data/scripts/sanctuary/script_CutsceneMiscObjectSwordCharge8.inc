@ Sanctuary third time CUTSCENE_MISC_OBJECT ?
SCRIPT_START script_CutsceneMiscObjectSwordCharge8
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimation 0x0007
	OffsetEntityPosition 0, -16
	EndBlock
	WaitForSyncFlagAndClear 0x00001000
	SetAnimation 0x000b
	Call WaitForAnimDone
	SetAnimation 0x000f
	SetSyncFlag 0x00010000
	WaitForSyncFlag 0x00000020
	SetAnimation 0x0013
	Call WaitForAnimDone
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
