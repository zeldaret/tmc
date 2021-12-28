@ Intro Ceremony Entrance Guard left
SCRIPT_START script_GuardEntryLeft
	BeginBlock
	SetEntitySpeed 0x0100
	SetAnimationState 0x0002
	SetAnimation 0x0001
	EndBlock
	WaitForSyncFlagAndClear 0x00080000
	SetAnimation 0x0005
	PlaySound SFX_11C
	WalkWest 0x0010
	SetAnimation 0x0001
	SetSyncFlag 0x00100000
	WaitForSyncFlagAndClear 0x00080000
	DoPostScriptAction 0x0006
SCRIPT_END
