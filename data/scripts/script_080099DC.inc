SCRIPT_START script_080099DC
	BeginBlock
	Call sub_0807F348
	SetEntitySpeed 0x00c0
	_0807EB44 0x0002
	DoPostScriptAction 0x0008
	EndBlock
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0007
	_0807EDD4 0x0068, 0x0060
	Wait 0x000f
	MessageFromTarget 0x1001
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0001
	MessageFromTarget 0x1003
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000008
SCRIPT_END
	.2byte 0x0000
