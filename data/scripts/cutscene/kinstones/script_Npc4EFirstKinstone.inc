@ Hyrule Town NPC4E Kinstone Cutscene
SCRIPT_START script_Npc4EFirstKinstone
	BeginBlock
	SetScrollSpeed 1
	CameraTargetPlayer
	EndBlock
script_0800F09A:
	CheckPlayerInRegion 0x01f8, 0x0338, 0x1030
	JumpIfNot script_0800F09A
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	LoadRoomEntityList gUnk_080EE8AC
	StartPlayerScript script_PlayerAtFirstKinstone
	WaitForSyncFlagAndClear 0x00000001
	SetSyncFlag 0x0000001e
	WaitForSyncFlagAndClear 0x00000040
	MessageFromTargetPos TEXT_MINISH2, 0x01, 0x000c
	WaitUntilTextboxCloses
	WaitForSyncFlagAndClear 0x000003c0
	_0807E8E4_0
	MessageFromTargetPos TEXT_MINISH2, 0x02, 0x000c
	WaitUntilTextboxCloses
	GivePlayerItem ITEM_KINSTONE_BAG
	WaitPlayerGetItem
	_0807E8E4_0
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000040
	MessageFromTargetPos TEXT_MINISH2, 0x03, 0x000c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	Call EnablePauseMenu
	EnablePlayerControl
	WaitForSyncFlagAndClear 0x00000040
script_0800F11A:
	CheckKinstoneFused KINSTONE_32
	JumpIfNot script_0800F11A
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	SetSyncFlag 0x0000001e
	Wait 0x003c
	_0807E8E4_1
	WaitForSyncFlagAndClear 0x000003c0
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
