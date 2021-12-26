@ Intro Smith 1
SCRIPT_START script_SmithIntro
	BeginBlock
	Call sub_0807F348
	SetEntitySpeed 0x0040
	_0807EB44 0x0004
	_0807E930 0x000c
	_0807E908 0x0003
	EndBlock
	Wait 0x001e
	CameraTargetEntity
	_0807E778 0x0004
	_0807E800 0x00000000
	WaitFor_2
	WaitForSomething2 0x00000008
	DoPostScriptAction 0x0004
	Wait 0x001e
	_0807E930 0x000b
	Wait 0x001e
	MessageFromTarget 0x1002
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E908 0x0001
	_0807EB44 0x0004
	_0807EDD4 0x00b8, 0x005c
	_0807EB44 0x0006
	DoPostScriptAction 0x0001
	MessageFromTarget 0x1004
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	Wait 0x001e
	_0807E778 0x0002
	DoFade5
	WaitFor_2
	Call sub_08053634
SCRIPT_END
