@ Castor Wilds OBJECT_69 darknut fight for kinstone piece
SCRIPT_START script_Object69DarknutFight
	BeginBlock
	Call sub_0807DF28
	SetLocalFlag 0x0039
	SetPlayerIdle
	EndBlock
	WaitForPlayerEnterRoom
	StartPlayerScript script_PlayerAtDarknutFight
	Wait 0x0018
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetRoomFlag 0x0000
	Wait 0x0010
	PlayBgm BGM_FIGHT_THEME
	EzloMessage TEXT_TREASURE_GUARDIAN, 0x01
	EnablePlayerControl
	Call sub_0807DF50
SCRIPT_END
	.2byte 0x0000
