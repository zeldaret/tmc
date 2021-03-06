SCRIPT_START script_0800D6D0
	StartScript 
	CheckLocalFlag 0x00f3
	JumpIf script_0800D6E8
	_0807EF80 0x0008
	StopScript 
script_0800D6E0:
	CheckLocalFlag 0x00f3
	JumpIfNot script_0800D6E0
script_0800D6E8:
	_0807EF80 0x0007
SCRIPT_END
	.short 0x0000
