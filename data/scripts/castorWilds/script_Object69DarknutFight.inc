@ Castor Wilds OBJECT_69 darknut fight for kinstone piece
SCRIPT_START script_Object69DarknutFight
	BeginBlock
	Call sub_0807DF28
	SetLocalFlag 0x0039
	_0807E864
	EndBlock
	WaitForPlayerAction0x17
	StartPlayerScript script_PlayerAtDarknutFight
	Wait 0x0018
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	SetRoomFlag 0x0000
	Wait 0x0010
	PlayBgm BGM_FIGHT_THEME
	_0807EB28 0x2701
	_0807E878
	Call sub_0807DF50
SCRIPT_END
	.2byte 0x0000
