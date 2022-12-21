@ Lon Lon Ranch Talon you have the key
SCRIPT_START script_TalonGotKey
	BeginBlock
	SetEntitySpeed 0x00c0
	SetAction 0x0001
	DoPostScriptAction 0x000b
	SetPlayerIdle
	Call sub_0807FBC4
	EndBlock
	Wait 0x000a
	DoPostScriptAction 0x0004
	SetSyncFlag 0x00000008
	StartPlayerScript script_PlayerGiveKey
	MoveTo 0x0140, 0x0298
	FacePlayer
	WaitForSyncFlagAndClear 0x00000004
	FacePlayer
	Wait 0x003c
	PlaySound SFX_TASK_COMPLETE
	InitItemGetSequence ITEM_QST_LONLON_KEY
	WaitPlayerGetItem 
	FaceAwayFromPlayer
	MessageFromTarget TEXT_LON_LON, 0x0c
	WaitUntilTextboxCloses
	Wait 0x0014
	MoveTo 0x0158, 0x0290
	Wait 0x000a
	MoveTo 0x0158, 0x0288
	Wait 0x0014
	SetSyncFlag 0x00000010
	MoveTo 0x0158, 0x0280
	Wait 0x000a
	DoPostScriptAction 0x0008
	SetSyncFlag 0x00000010
	SetSyncFlag 0x00000008
	DoPostScriptAction 0x0006
SCRIPT_END
