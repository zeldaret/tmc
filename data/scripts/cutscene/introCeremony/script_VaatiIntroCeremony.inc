@ Intro Ceremony Vaati
SCRIPT_START script_VaatiIntroCeremony
	BeginBlock
	SetAnimationState 0x0000
	SetEntitySpeed 0x0100
	EndBlock
	Call DeleteHitbox
	WaitForSyncFlagAndClear 0x00000100
	DoPostScriptAction 0x0001
	MoveTo 0x01f8, 0x00d0
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	SetAnimationState 0x0004
	DoPostScriptAction 0x001c
	Call WaitForAnimDone
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	SetAnimationState 0x0000
	DoPostScriptAction 0x001c
	Call WaitForAnimDone
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	SetAnimationState 0x0000
	DoPostScriptAction 0x001a
	Call WaitForAnimDone
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	SetAnimationState 0x0000
	DoPostScriptAction 0x0014
	PlaySound SFX_CHARGING_UP
	CallWithArg sub_08095420, script_08011890
	Wait 0x00f0
	DoPostScriptAction 0x0016
	PlaySound SFX_1CB
	WaitForSyncFlagAndClear 0x10000000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0001
	MoveTo 0x01d8, 0x00a8
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	DoPostScriptAction 0x0014
	PlaySound SFX_1C4
	CallWithArg sub_0809545C, script_VaatiDarkMagic
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	Wait 0x003c
	DoPostScriptAction 0x0016
	PlaySound SFX_1C5
	SetSyncFlag 0x08000000
	WaitForSyncFlagAndClear 0x10000000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x0001
	MoveTo 0x01f8, 0x0098
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0004
	Wait 0x005a
	SetAnimationState 0x0004
	DoPostScriptAction 0x001c
	Call WaitForAnimDone
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Wait 0x001e
	SetSyncFlag 0x00000200
	WaitForSyncFlagAndClear 0x00000100
	Call Vaati_Evaporate
	DoPostScriptAction 0x0008
	Wait 0x0078
	SetSyncFlag 0x00000200
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
