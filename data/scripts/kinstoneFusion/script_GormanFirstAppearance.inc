@ Hyrule Town Gorman during Kinstone cutscene for first empty house
SCRIPT_START script_GormanFirstAppearance
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	SetEntitySpeed 0x0040
	Call sub_0807F348
	EndBlock
script_0800BA8E:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BA8E
	_0807EDD4 0x02f8, 0x0350
	Wait 0x001e
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807EB44 0x0006
	Wait 0x001e
	_0807EDD4 0x02f0, 0x0350
	Wait 0x001e
	MessageNoOverlap 0x0e00
	WaitUntilTextboxCloses
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
