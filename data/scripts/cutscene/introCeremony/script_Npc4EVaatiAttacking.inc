@ Intro Ceremony NPC4E Vaati attacking
SCRIPT_START script_Npc4EVaatiAttacking
	Wait 0x003c
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	StartPlayerScript script_PlayerProtectingZelda
	WaitForSyncFlagAndClear 0x00000400
	MessageFromTargetPos 0x1047, 0x0000
	WaitUntilTextboxCloses
	Call sub_0806DC3C
	Call SetPlayerActionNormal
	CallWithArg EquipItem, 0x0000000d
	CallWithArg sub_0807F29C, gUnk_080049F6
	Wait 0x001e
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	CallWithArg sub_0807F29C, 0x00000000
	Call sub_0806DC58
	Wait 0x003c
	SetSyncFlag 0x08000000
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	Wait 0x000f
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	CallWithArg DeleteManager36, 0x00000002
	_0807F0C8 0x0000, 0x0000
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	StopBgm
	Wait 0x003c
	MessageFromTargetPos 0x104a, 0x0000
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	MessageFromTargetPos 0x1049, 0x0000
	WaitUntilTextboxCloses
	SetEntityPositionRelative 0x01f8, 0x0098
	Wait 0x0078
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	Call sub_0804BCDC
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
