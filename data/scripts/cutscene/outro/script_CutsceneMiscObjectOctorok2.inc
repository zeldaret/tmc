@ Outro CUTSCENE_MISC_OBJECT Octorok 2
SCRIPT_START script_CutsceneMiscObjectOctorok2
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0007
	SetAnimation 0x0002
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	Call CreateDust
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
