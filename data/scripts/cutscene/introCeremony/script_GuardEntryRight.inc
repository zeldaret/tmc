@ Intro Ceremony Entrace Guard right
SCRIPT_START script_GuardEntryRight
	BeginBlock
	SetEntitySpeed 0x0100
	SetAnimationState 0x0006
	SetAnimation 0x0003
	EndBlock
	WaitForSyncFlagAndClear 0x00200000
	SetAnimation 0x0007
	PlaySound SFX_11C
	WalkEast 0x0010
	SetAnimation 0x0003
	SetSyncFlag 0x00400000
	WaitForSyncFlagAndClear 0x00200000
	DoPostScriptAction 0x0006
SCRIPT_END
