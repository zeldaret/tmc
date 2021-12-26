@ Intro smith OBJECT_69 ?
SCRIPT_START script_Object69Intro
	BeginBlock
	Call sub_0807DF28
	_0807E864
	SetSyncFlag 0x00000000
	EndBlock
	WaitForFadeFinish
	Wait 0x0078
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000001
	SetGlobalFlag 0x001c
	Call sub_0807DF50
	_0807E878
	Call sub_0807921C
SCRIPT_END
