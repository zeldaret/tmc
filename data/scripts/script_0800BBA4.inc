SCRIPT_START script_0800BBA4
	StartScript 
	_0807EF80 0x0007
	_0807EB44 0x0004
	_0807EF80 0x0000
	Call sub_0807F348
	StopScript 
script_0800BBBA:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BBBA
	_0807EF80 0x0004
	Wait 0x003c
	TextboxNoOverlap 0x0e04
	_0807EA94 
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
