SCRIPT_START script_0800BC08
	BeginBlock 
	_0807EF80 0x0007
	_0807EB44 0x0004
	_0807EF80 0x0000
	EndBlock 
script_0800BC18:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BC18
	_0807EF80 0x0004
	Wait 0x003c
	TextboxNoOverlap 0x0e07
	_0807EA94 
	BeginBlock 
	_0807EB44 0x0000
	_0807E930 0x0004
	EndBlock 
	Wait 0x003c
	Call sub_08065CCC
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
