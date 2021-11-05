SCRIPT_START script_0800BBDC
	BeginBlock
	_0807E930 0x0000
	EndBlock
script_0800BBE4:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BBE4
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap 0x0e03
	_0807EA94 
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
	.2byte 0x0000
