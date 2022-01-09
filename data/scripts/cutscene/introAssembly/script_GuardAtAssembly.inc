@ Intro Assembly Guard
SCRIPT_START script_GuardAtAssembly
	BeginBlock
	SetAnimationState 0x0000
	SetAnimation 0x0000
	EndBlock
	WaitForSyncFlag 0x00000010
	PlaySound SFX_11C
	SetAnimation 0x0001
	Wait 0x0010
	PlaySound SFX_11C
	SetAnimationState 0x0004
	SetAnimation 0x0006
	Wait 0x0010
	DoPostScriptAction 0x000f
	SetEntitySpeed 0x0200
	WalkSouth 0x1c20
	DoPostScriptAction 0x0006
SCRIPT_END
