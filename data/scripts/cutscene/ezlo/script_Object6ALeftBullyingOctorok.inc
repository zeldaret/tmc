@ First look at Ezlo OBJECT_6A left octorok
SCRIPT_START script_Object6ALeftBullyingOctorok
	BeginBlock
	SetAnimationState 0x0002
	DoPostScriptAction 0x0007
	SetAnimation 0x0001
	EndBlock
	WaitForSyncFlagAndClear 0x00000040
	SetAnimation 0x0005
	Wait 0x001e
	SetSyncFlag 0x00000080
	SetAnimation 0x0001
	WaitForSyncFlagAndClear 0x00000040
	SetAnimation 0x0005
	Wait 0x001e
	SetSyncFlag 0x00000080
	SetAnimation 0x0001
	WaitForSyncFlagAndClear 0x00000040
	Wait 0x0001
	DoPostScriptAction 0x0006
SCRIPT_END
