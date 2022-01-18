@ DHC OBJECT_69 trying to escape the collapsing castle
SCRIPT_START script_Object69CastleEscape
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StartPlayerScript script_PlayerCastleEscape
	WaitForSyncFlagAndClear 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	EzloMessage 0x1647
	WaitUntilTextboxCloses
	SetLocalFlag 0x007a
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
