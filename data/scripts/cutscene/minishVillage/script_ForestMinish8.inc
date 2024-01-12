@ Minish Village Intro Forest Minish 4
SCRIPT_START script_ForestMinish8
	BeginBlock
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0000
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x000f
	Call DeleteHitbox
	EndBlock
	WaitForSyncFlagAndClear 0x00008000
	DoPostScriptAction 0x0007
	MoveTo 0x01b8, 0x0320
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	SetEntitySpeed 0x0200
	DoPostScriptAction 0x000f
	MoveTo 0x01f8, 0x0330
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	SetSyncFlag 0x00010000
	WaitForSyncFlagAndClear 0x00008000
	SetEntitySpeed 0x0300
	DoPostScriptAction 0x000f
	MoveTo 0x0188, 0x02d8
	SetSyncFlag 0x00010000
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
