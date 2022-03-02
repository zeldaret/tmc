@ Graveyard OBJECT_69 Crow stealing key cutscene
SCRIPT_START script_Object69CrowStealingKey
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	PlaySound SFX_1F3
	Call CreatePlayerQuestionMark
	_0807E8E4_1
	Wait 0x000a
	_0807E8E4_3
	Wait 0x0032
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	StartPlayerScript script_PlayerGetKeyStolen
	WaitForSyncFlagAndClear 0x00000040
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000010
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000040
	SetInventoryValue 0x003c, 0x0000
	SetGlobalFlag 0x0020
	_0807E8E4_3
	Wait 0x001e
	EzloMessage 0x2809
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
