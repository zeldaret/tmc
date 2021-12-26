@ Intro Zelda at Smith 2
SCRIPT_START script_ZeldaTalkToSmith
	BeginBlock
	_0807EB44 0x0002
	SetEntitySpeed 0x0100
	Call sub_0807F348
	EndBlock
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0004
	_0807EB74
	WaitForSomething2 0x00000004
	_0807EB74
	WaitForSomething2 0x00000004
	_0807EB74
	_0807EB8C
	DoPostScriptAction 0x0001
	MessageFromTargetPos 0x100a, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000004
	_0807EB8C
	DoPostScriptAction 0x0001
	_0807EB8C
	_0807EB44 0x0002
	MessageFromTargetPos 0x100d, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	@ Leave room
	_0807EDD4 0x0028, 0x0060
	_0807EDD4 0x0000, 0x0060
	Call sub_080536A8
	Wait 0x001e
	BeginBlock
	SetGlobalFlag 0x0013
	Call sub_0807DF50
	Call sub_080791D0
	_0807E878
	EndBlock
SCRIPT_END
	.2byte 0x0000
