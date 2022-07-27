@ Outro Zelda
SCRIPT_START script_ZeldaOutro
	BeginBlock
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	BeginBlock
	DoPostScriptAction 0x0004
	Call CreatePlayerExclamationMark
	EndBlock
	Wait 0x003c
	WalkEast 0x0010
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000004
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0004
	Wait 0x003c
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000004
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	PlaySound SFX_SPARKLES
	CallWithArg sub_080960C4, script_CutsceneMiscObjectZeldaMagic
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000004
	PlaySound SFX_143
	SetSyncFlag 0x00001000
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000004
	Call sub_08066E68
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000004
	PlaySound SFX_SPARKLES
	CallWithArg sub_080960C4, script_EzloZeldaMagic
	Wait 0x0078
	PlaySound SFX_153
	CallWithArg sub_0807FADC, 0x00000003
	Wait 0x000f
	PlaySound SFX_153
	CallWithArg sub_0807FADC, 0x00000003
	Wait 0x000f
	PlaySound SFX_153
	CallWithArg sub_0807FADC, 0x00000003
	Wait 0x003c
	PlaySound SFX_153
	CallWithArg sub_0807FADC, 0x00000001
	PlaySound SFX_143
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
