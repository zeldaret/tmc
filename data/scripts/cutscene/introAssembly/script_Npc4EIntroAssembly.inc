@ Intro Assembly NPC4E
SCRIPT_START script_Npc4EIntroAssembly
	BeginBlock
	SetEntityPositionRelative 0x0088, 0x0078
	EndBlock
script_08008E12:
	CheckPlayerInRegion 0x00d8, 0x0098, 0x4020
	JumpIfNot script_08008E12
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	SetScrollSpeed 1
	CameraTargetEntity
	WaitForPlayerEnterRoom
	Wait 0x003c
	StartPlayerScript script_PlayerEnters
	WaitForSyncFlagAndClear 0x00000020
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	Wait 0x003c
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	Wait 0x000f
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	MessageFromTargetPos TEXT_PROLOGUE, 0x53, 0x000e
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000040
	WaitForSyncFlagAndClear 0x00000020
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	GivePlayerItem ITEM_QST_BROKEN_SWORD
	WaitPlayerGetItem
	StartPlayerScript script_PlayerGetSword
	WaitForSyncFlagAndClear 0x00000020
	_0807E8E4_0
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetSyncFlag 0x00000010
	Wait 0x0078
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	_0807E8E4_1
	SetSyncFlag 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	GivePlayerItem ITEM_MAP
	WaitPlayerGetItem
	SetIntVariable 0x00000003
	Call LoadMenu
	_0807E8E4_0
	SetSyncFlag 0x00000080
	WaitForSyncFlagAndClear 0x00000100
	SetScrollSpeed 4
	CameraTargetPlayer
	SetGlobalFlag TABIDACHI
	Call sub_0806DCC0
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
