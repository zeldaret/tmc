SCRIPT_START script_0800BB30
	BeginBlock 
	_0807EB44 0x0004
	_0807EF80 0x0000
	Call sub_0807F348
	EndBlock 
script_0800BB42:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BB42
	_0807EF80 0x0004
	Wait 0x003c
	TextboxNoOverlap 0x0e05
	_0807EA94 
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
