@ Ezlo Cutscene CUTSCENE_MISC_OBJECT Minish Cap
SCRIPT_START script_CutsceneMiscObjectMinishCap
	BeginBlock
	DoPostScriptAction 0x0007
	SetEntitySpeed 0x0040
	Call sub_08094B80
	EndBlock
	WaitForSyncFlagAndClear 0x00000080
	CallWithArg CreateRepeatedSoundManager, 0x00000003
	Call sub_08094B0C
	MoveTo 0x0078, 0x0068
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	_0807EF3C -128, 0x0000
	CallWithArg DeleteRepeatedSoundManager, 0x00000003
	Wait 0x003c
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	SetAnimation 0x0001
	Call WaitForAnimDone
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
