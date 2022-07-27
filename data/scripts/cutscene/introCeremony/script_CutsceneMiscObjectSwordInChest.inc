@ Intro Ceremony CUTSCENE_MISC_OBJECT Sword in Chest
SCRIPT_START script_CutsceneMiscObjectSwordInChest
	BeginBlock
	Call sub_08095330
	EndBlock
	WaitForSyncFlagAndClear 0x00800000
	_0807EF3C 0x0000, 0x0020
	SetSyncFlag 0x01000000
	WaitForSyncFlagAndClear 0x00800000
	Call sub_08095364
	PlaySound SFX_122
	Wait 0x003c
	SetSyncFlag 0x01000000
	WaitForSyncFlagAndClear 0x00800000
	SetAnimation 0x0002
	SetSyncFlag 0x01000000
	WaitForSyncFlagAndClear 0x00800000
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
