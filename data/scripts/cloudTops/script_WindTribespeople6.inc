@ Cloud Tops Windtribespeople sucked up ghost
SCRIPT_START script_WindTribespeople6
	BeginBlock
	DoPostScriptAction 0x000a
	EndBlock
	WaitForSomething2 0x00000001
	_0807EB74
	DoPostScriptAction 0x0004
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	MessageNoOverlap 0x2f0a
	WaitUntilTextboxCloses
	_0807E5F8 0x00000002
script_08014AAC:
	_0807E30C
	JumpIfNot script_08014AAC
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x2f0a
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_08014AAC
	.2byte 0x0000
