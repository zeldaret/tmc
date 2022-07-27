@ Outro CUTSCENE_MISC_OBJECT Tektite 2
SCRIPT_START script_CutsceneMiscObjectTektite2
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0007
	SetAnimation 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	Call CreateDust
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
