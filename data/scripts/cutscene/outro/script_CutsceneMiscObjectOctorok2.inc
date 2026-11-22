@ Outro CUTSCENE_MISC_OBJECT Octorok 2
script_CutsceneMiscObjectOctorok2::
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0007
	SetAnimation 0x0002
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	Call CreateDeathFx
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
