@ Outro CUTSCENE_MISC_OBJECT Octorok 3
script_CutsceneMiscObjectOctorok3::
	BeginBlock
	SetAnimationState 0x0000
	DoPostScriptAction 0x0007
	SetAnimation 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	Call CreateDeathFx
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
