SCRIPT_START script_0800BB00
	BeginBlock 
	EndBlock 
script_0800BB04:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BB04
	DoPostScriptAction 0x0004
	Wait 0x003c
	TextboxNoOverlap 0x0e02
	_0807EA94 
	Wait 0x003c
	DoPostScriptAction 0x000f
	Wait 0x00b4
	Call sub_08054968
SCRIPT_END
	.short 0x0000
