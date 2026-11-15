@ Intro Assembly Minister Potho
SCRIPT_START script_MinisterPothoAtAssembly
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	PlaySound SFX_PLY_JUMP
	Fall 0x0180, 0x0030
	SetAnimationState 0x0002
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	SetAnimationState 0x0004
	SetSyncFlag 0x00000008
	BeginBlock
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	Jump script_0800927E
	.2byte 0x0000
