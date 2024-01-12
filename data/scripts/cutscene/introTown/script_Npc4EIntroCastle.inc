@ Intro Hyrule Castle NPC4E
SCRIPT_START script_Npc4EIntroCastle
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerIntroCastle
	WaitForSyncFlagAndClear 0x00000400
	SetInventoryValue ITEM_QST_SWORD, 0x0002
	MessageFromTargetPos TEXT_PROLOGUE, 0x36, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	MessageFromTargetPos TEXT_PROLOGUE, 0x37, 0x0002
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000010
	WaitForSyncFlagAndClear 0x00000020
	MessageFromTargetPos TEXT_PROLOGUE, 0x38, 0x000c
	WaitUntilTextboxCloses
	StopBgm
	SetFadeTime 0x0004
	SetFade5
	WaitForFadeFinish
	Call sub_08064180
	Call sub_08064180
	Call sub_08064180
	Call sub_08064180
	Call sub_08064180
	Call sub_08064180
	Call sub_08064180
	Call sub_08064180
	LoadRoomEntityList gUnk_080F06E0
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	StartPlayerScript script_PlayerAtIntroCeremony
	WaitForSyncFlagAndClear 0x00000400
	SetEntityPositionRelative 0x01f8, 0x0050
	SetScrollSpeed 7
	CameraTargetEntity
	Wait 0x000a
	SetScrollSpeed 1
	SetFadeTime 0x0001
	SetFade4
	SetSyncFlag 0x0002a800
	WaitForSyncFlagAndClear 0x00055000
	SetEntityPositionRelative 0x01f8, 0x0078
	Wait 0x003c
	SetSyncFlag 0x00800000
	WaitForSyncFlagAndClear 0x01000000
	SetSyncFlag 0x0002a800
	WaitForSyncFlagAndClear 0x00055000
	_0807E8E4_1
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	MessageFromTargetPos TEXT_PROLOGUE, 0x39, 0x000c
	WaitUntilTextboxCloses
	PlayBgm BGM_CASTLE_TOURNAMENT
	_0807E8E4_2
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000010
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000020
	WaitForSyncFlagAndClear 0x00000080
	Wait 0x012c
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	MessageFromTargetPos TEXT_PROLOGUE, 0x3a, 0x000c
	WaitUntilTextboxCloses
	SetEntityPositionRelative 0x01f8, 0x01c0
	SetScrollSpeed 4
	Wait 0x0078
	SetSyncFlag 0x00280000
	WaitForSyncFlagAndClear 0x00500000
	SetSyncFlag 0x00000100
	SetEntityPositionRelative 0x01f8, 0x0220
	SetEntitySpeed 0x0100
	MoveTo 0x01f8, 0x0098
	Wait 0x003c
	WaitForSyncFlagAndClear 0x00000200
	SetSyncFlag 0x00280000
	StopBgm
	PlaySound SFX_9B
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	MessageFromTargetPos TEXT_PROLOGUE, 0x43, 0x0000
	WaitUntilTextboxCloses
	PlayBgm BGM_VAATI_THEME
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	SetSyncFlag 0x0002a800
	WaitForSyncFlagAndClear 0x00055000
	PlaySound SFX_1C7
	PlaySound SFX_BUTTON_DEPRESS
	SetSyncFlag 0x00000100
	SetSyncFlag 0x00002800
	CallWithArg sub_0807FB28, 0x00000003
	WaitForSyncFlagAndClear 0x00000200
	WaitForSyncFlagAndClear 0x00005000
	SetSyncFlag 0x00028000
	WaitForSyncFlagAndClear 0x00050000
	MessageFromTargetPos TEXT_PROLOGUE, 0x44, 0x0000
	WaitUntilTextboxCloses
	SetEntityPositionRelative 0x01f8, 0x0098
	StopBgm
	Wait 0x003c
	PlayBgm BGM_VAATI_REBORN
	SetSyncFlag 0x00028000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000200
	WaitForSyncFlagAndClear 0x00050000
	CallWithArg sub_0807FB28, 0x00000003
	PlaySound SFX_BUTTON_DEPRESS
	SetSyncFlag 0x00028000
	WaitForSyncFlagAndClear 0x00050000
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	SetSyncFlag 0x08000000
	SetSyncFlag 0x00800000
	WaitForSyncFlagAndClear 0x01000000
	CallWithArg CreateRepeatedSoundManager, 0x00000002
	_0807F0C8 0xffff, 0x0000
