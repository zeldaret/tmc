@ Ezlo Cutscene Vaati
SCRIPT_START script_Vaati
	BeginBlock
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	SetAnimationState 0x0000
	DoPostScriptAction 0x0017
	Call SetCollisionLayer2
	EndBlock
	WaitForSyncFlagAndClear 0x00000800
	SetAnimationState 0x0002
	DoPostScriptAction 0x0017
	Wait 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0017
	SetAnimationState 0x0004
	DoPostScriptAction 0x001b
	SetSyncFlag 0x00001000
	WaitForSyncFlagAndClear 0x00000800
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x0014
	SetSyncFlag 0x00001000
	WaitForSyncFlagAndClear 0x00000800
	DoPostScriptAction 0x0018
	Call WaitForAnimDone
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00001000
	WaitForSyncFlagAndClear 0x00000800
	SetAnimationState 0x0004
	DoPostScriptAction 0x0014
	CallWithArg sub_0809545C, script_CutsceneMiscObjectDarkMagic
	PlaySound SFX_1C4
	Wait 0x0078
	DoPostScriptAction 0x0016
	WaitForSyncFlagAndClear 0x00020000
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00001000
	WaitForSyncFlagAndClear 0x00000800
	Call Vaati_Evaporate
	DoPostScriptAction 0x0008
	Wait 0x0078
	SetSyncFlag 0x00001000
	DoPostScriptAction 0x0006
SCRIPT_END
