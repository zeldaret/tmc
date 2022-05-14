@ Hyrule Castle OBJECT_69 Sanctuary Entrance
SCRIPT_START script_Object69SanctuaryEntrance
	CheckPlayerInRegion 0x0088, 0x0048, 0x3030
	JumpIfNot script_Object69SanctuaryEntrance
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtSanctuaryEntrance
	WaitForSyncFlagAndClear 0x00000001
	EzloMessage TEXT_VAATI, 0x2d
	WaitUntilTextboxCloses
	SetLocalFlag NAKANIWA_00_EZERO
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
