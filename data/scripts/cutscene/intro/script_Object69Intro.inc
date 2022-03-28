@ Intro smith OBJECT_69 ?
SCRIPT_START script_Object69Intro
	BeginBlock
	Call sub_0807DF28
	SetPlayerIdle
	SetSyncFlag 0x00000000
	EndBlock
	WaitForFadeFinish
	Wait 0x0078
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000001
	SetGlobalFlag 0x001c
	Call sub_0807DF50
	EnablePlayerControl
	Call PlayerSetNormalAndCollide
SCRIPT_END
