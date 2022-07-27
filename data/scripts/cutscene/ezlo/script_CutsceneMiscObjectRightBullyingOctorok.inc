@ First look at Ezlo CUTSCENE_MISC_OBJECT right octorok
SCRIPT_START script_CutsceneMiscObjectRightBullyingOctorok
	BeginBlock
	SetAnimationState 0x0006
	DoPostScriptAction 0x0007
	SetAnimation 0x0003
	EndBlock
	WaitForSyncFlagAndClear 0x00000010
	SetAnimation 0x0007
	Wait 0x001e
	SetSyncFlag 0x00000020
	SetAnimation 0x0003
	WaitForSyncFlagAndClear 0x00000010
	SetAnimation 0x0007
	Wait 0x001e
	SetSyncFlag 0x00000020
	SetAnimation 0x0003
	WaitForSyncFlagAndClear 0x00000010
	Wait 0x0001
	DoPostScriptAction 0x0006
SCRIPT_END
