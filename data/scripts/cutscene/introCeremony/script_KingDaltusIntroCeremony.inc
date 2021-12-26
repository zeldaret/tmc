@ Intro Ceremony King Daltus
SCRIPT_START script_KingDaltusIntroCeremony
	BeginBlock
	DoPostScriptAction 0x0008
	_0807EB44 0x0004
	SetEntitySpeed 0x0100
	EndBlock
	Call sub_0807F338
	WaitForSomething2 0x00000040
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x0001
	SetEntitySpeed 0x0040
	_0807EDD4 0x01f8, 0x0048
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000040
	DoPostScriptAction 0x0010
	Wait 0x001e
	DoPostScriptAction 0x0010
	Call sub_0807F3C8
	SetEntitySpeed 0x0400
	SetEntityDirection 0x0008
	_0807EC1C 0x003c
	_0807E5F8 0x00000080
	DoPostScriptAction 0x0006
SCRIPT_END
