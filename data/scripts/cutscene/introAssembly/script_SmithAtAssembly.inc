@ Intro Assembly Smith
SCRIPT_START script_SmithAtAssembly
	BeginBlock
	Call sub_0807F348
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSomething2 0x00000001
	_0807EB74
	DoPostScriptAction 0x0001
	MessageFromTargetPos 0x105b, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x0005
	Wait 0x003c
	DoPostScriptAction 0x0001
	MessageFromTargetPos 0x1051, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807EB74
	_0807EB8C
	DoPostScriptAction 0x0001
	MessageFromTargetPos 0x1055, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	_0807EB74
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0001
	_0807EDD4 0x0098, 0x0078
	_0807EB74
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0001
	MessageFromTargetPos 0x1059, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000002
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	Jump script_080092B2
	.2byte 0x0000
