SCRIPT_START script_0800BBDC
	BeginBlock 
	_0807E930 0x0000
	EndBlock 
script_0800BBE4:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BBE4
	_0807EF80 0x0004
	Wait 0x003c
	TextboxNoOverlap 0x0e03
	_0807EA94 
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
	.short 0x0000
