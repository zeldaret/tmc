@ Intro Ceremony Player fainting
SCRIPT_START script_PlayerFainting
	PlaySound SFX_PLY_VO6
	SetAnimationState 0x0004
	DoPostScriptAction 0x000d
	PlaySound SFX_86
	Call sub_0807F36C
	SetEntitySpeed 0x0400
	WalkWest 0x0008
	BeginBlock
	Call sub_0807F1E8
	DoPostScriptAction 0x0011
	EndBlock
	Call WaitForAnimDone
	WaitForSyncFlag 0x80000000
	Call SetPlayerActionNormal
SCRIPT_END
