@ Outro CUTSCENE_MISC_OBJECT Tektite 2
SCRIPT_START script_CutsceneMiscObjectTektite2
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0007
	SetAnimation 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	Call CreateDeathFx
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
