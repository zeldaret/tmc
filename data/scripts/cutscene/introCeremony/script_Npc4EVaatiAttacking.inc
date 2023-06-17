@ Intro Ceremony NPC4E Vaati attacking
SCRIPT_START script_Npc4EVaatiAttacking
	Wait 0x003c
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	StartPlayerScript script_PlayerProtectingZelda
	WaitForSyncFlagAndClear 0x00000400
	MessageFromTargetPos TEXT_PROLOGUE, 0x47, 0x0000
	WaitUntilTextboxCloses
	Call NPC4E_SaveEquippedItems
	Call SetPlayerActionNormal
	CallWithArg EquipItem, ITEM_SHIELD
	CallWithArg SetPlayerMacro, gPlayerMacroProtectWithShield
	Wait 0x001e
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	CallWithArg SetPlayerMacro, 0
	Call NPC4E_RestoreEquippedItems
	Wait 0x003c
	SetSyncFlag 0x08000000
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	Wait 0x000f
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	CallWithArg DeleteRepeatedSoundManager, 0x00000002
	_0807F0C8 0x0000, 0x0000
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	StopBgm
	Wait 0x003c
	MessageFromTargetPos TEXT_PROLOGUE, 0x4a, 0x0000
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	MessageFromTargetPos TEXT_PROLOGUE, 0x49, 0x0000
	WaitUntilTextboxCloses
	SetEntityPositionRelative 0x01f8, 0x0098
	Wait 0x0078
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	Call sub_0804BCDC
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
