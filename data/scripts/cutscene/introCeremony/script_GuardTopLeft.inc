@ Intro Ceremony Guard top left
SCRIPT_START script_GuardTopLeft
	ClearSyncFlag 0x00008000
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	SetAnimation 0x0007
	SetAnimationState 0x0006
	WalkWest 0x0020
	SetAnimationState 0x0004
	SetAnimation 0x0006
	WalkSouth 0x0010
	SetAnimation 0x0002
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetAnimation 0x0012
	PlaySound SFX_EM_MOBLIN_SPEAR
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	SetAnimation 0x0014
	SetEntitySpeed 0x0100
	MoveTo 0x01e8, 0x0098
	SetEntitySpeed 0x0040
	MoveToOffset 0x0000, 0x0010
	SetAnimation 0x0013
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	DoPostScriptAction 0x000d
	SetAnimation 0x0014
	SetEntitySpeed 0x0020
	MoveToOffset 0x0000, 0xfff0
	SetAnimation 0x0013
	DoPostScriptAction 0x0010
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	Call sub_0807F3C8
	SetAnimation 0x0014
	SetEntitySpeed 0x0400
	SetEntityDirection 0x001e
	WalkForward 0x003c
	SetSyncFlag 0x00010000
	DoPostScriptAction 0x0006
SCRIPT_END
