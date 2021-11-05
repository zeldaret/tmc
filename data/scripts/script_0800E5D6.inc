SCRIPT_START script_0800E5D6
	EndBlock
script_0800E5D8:
	CheckLocalFlag 0x0086
	JumpIfNot script_0800E5D8
	_0807E864
	Wait 0x003c
	SetIntVariable 0x00000905
	Call sub_0807F420
	SetRoomFlag 0x0001
	Wait 0x001e
	_0807E878
SCRIPT_END
	.2byte 0x0000
