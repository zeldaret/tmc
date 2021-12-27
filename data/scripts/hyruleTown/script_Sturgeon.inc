@ Library Sturgeon
SCRIPT_START script_Sturgeon
	BeginBlock
	Call sub_08064CC0
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0002
	_0807E930 0x0000
	EndBlock
script_0800ED76:
	_0807E944
	_0807E864
	_0807EB74
	Call sub_08064CD8
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800ED76
	.2byte 0x0000
