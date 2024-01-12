@ Minish Village Intro Forest Minish
SCRIPT_START script_ForestMinish5
	BeginBlock
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x000f
	Call DeleteHitbox
	EndBlock
	WaitForSyncFlagAndClear 0x00000200
	DoPostScriptAction 0x0007
	MoveTo 0x0208, 0x0308
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000400
	WaitForSyncFlagAndClear 0x00000200
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	SetSyncFlag 0x00000400
	WaitForSyncFlagAndClear 0x00000200
	SetEntitySpeed 0x0200
	DoPostScriptAction 0x000f
	MoveTo 0x0208, 0x0328
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000400
	WaitForSyncFlagAndClear 0x00000200
	SetEntitySpeed 0x0300
	DoPostScriptAction 0x000f
	MoveTo 0x0208, 0x02b0
	SetSyncFlag 0x00000400
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
