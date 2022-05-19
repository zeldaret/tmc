@ Sanctuary Vaati
SCRIPT_START script_VaatiSanctuary
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x000b
	Call DeleteHitbox
	EndBlock
	WaitForSyncFlagAndClear 0x00000020
	SetEntityPositionRelative 0x0098, 0x0048
	Call Vaati_Apparate
	Wait 0x00e9
	DoPostScriptAction 0x0007
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000020
	Wait 0x003c
	DoPostScriptAction 0x0014
	PlaySound SFX_CHARGING_UP
	CallWithArg sub_08095420, script_08013494
	Wait 0x005a
	DoPostScriptAction 0x0016
	WaitForSyncFlagAndClear 0x00000080
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000020
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000020
	Call Vaati_Evaporate
	DoPostScriptAction 0x0008
	Wait 0x0078
	SetSyncFlag 0x00000040
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
