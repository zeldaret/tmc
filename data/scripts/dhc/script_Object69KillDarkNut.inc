@ DHC OBJECT_69 Kill first Dark Nut
SCRIPT_START script_Object69KillDarkNut
	EndBlock
script_0800E5D8:
	CheckLocalFlag 0x0086
	JumpIfNot script_0800E5D8
	SetPlayerIdle
	Wait 0x003c
	SetIntVariable 0x00000905
	Call LoadMenu
	SetRoomFlag 0x0001
	Wait 0x001e
	EnablePlayerControl
SCRIPT_END
	.2byte 0x0000
