@ Hyrule Town Kinstone cutscene Kid 3
SCRIPT_START script_KidKinstone3
	BeginBlock
	_0807E9D4
	_0807EB44 0x0002
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x000b
	EndBlock
	Call sub_0807F348
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0007
	_0807EDD4 0x01c8, 0x0328
	_0807EDD4 0x01e8, 0x0338
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E5F8 0x00000200
script_0800F50C:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_0800F524
	EndBlock 
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x1239
	WaitUntilTextboxCloses
	_0807E878 
script_0800F524:
	TestBit 0x00000010
	JumpIfNot script_0800F50C
	EndBlock
	DoPostScriptAction 0x000b
	Wait 0x0028
	SetEntitySpeed 0x0100
	_0807EC64 0x0010
	_0807EDD4 0x0288, 0x0328
	_0807E5F8 0x00000200
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
