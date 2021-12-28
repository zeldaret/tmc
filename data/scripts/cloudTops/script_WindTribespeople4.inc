@ Cloud Tops Windtribespeople blocking way up
SCRIPT_START script_WindTribespeople4
	BeginBlock
	Call sub_0806C870
	DoPostScriptAction 0x000a
	EndBlock
script_08014A36:
	_0807E30C
	JumpIfNot script_08014A36
	_0807E864
	_0807EB74
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_08014A36
	.2byte 0x0000
