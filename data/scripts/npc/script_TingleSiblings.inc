@ Tingle Siblings
SCRIPT_START script_TingleSiblings
	BeginBlock
	Call sub_08064EA4
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0801690A:
	_0807E30C
	JumpIfNot script_0801690A
	_0807E864
	_0807EB74
	Call sub_08064F28
	WaitUntilTextboxCloses
	JumpIfNot script_08016926
	GivePlayerItem 0x003d
	WaitPlayerGetItem
script_08016926:
	_0807E878
	SetGlobalFlag 0x005c
	Jump script_0801690A
	BeginBlock
	_0807E9D4
	_0807EB44 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_0801693E:
	_0807E944
	_0807E864
	Wait 0x0018
	MessageFromTarget 0x0a01
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0801693E
	.2byte 0x0000
	BeginBlock
	_0807E9D4
	_0807EB44 0x0000
	DoPostScriptAction 0x000a
	_0807E930 0x0000
	EndBlock
script_0801696A:
	_0807E944
	_0807E864
	Wait 0x0018
	MessageFromTarget 0x0a01
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0801696A
	.2byte 0x0000
