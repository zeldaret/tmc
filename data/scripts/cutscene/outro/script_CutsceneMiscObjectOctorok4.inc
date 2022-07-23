@ Outro CUTSCENE_MISC_OBJECT Octorok 4
SCRIPT_START script_CutsceneMiscObjectOctorok4
	BeginBlock
	SetAnimationState 0x0006
	DoPostScriptAction 0x0007
	SetAnimation 0x0003
	EndBlock
	WaitForSyncFlagAndClear 0x00000008
	Call CreateDust
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
