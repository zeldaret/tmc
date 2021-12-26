@ Hyrule Town Kinstone cutscene Kid 1
SCRIPT_START script_KidKinstone1
	BeginBlock
	_0807E9D4
	_0807EB44 0x0002
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x000b
	EndBlock
	Call sub_0807F348
	WaitForSomething2 0x00000004
	DoPostScriptAction 0x0007
	_0807EDD4 0x01f8, 0x0318
	_0807EDD4 0x0208, 0x0318
	_0807EDD4 0x0208, 0x0338
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E5F8 0x00000080
script_0800F3EA:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_0800F402
	EndBlock 
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x1237
	WaitUntilTextboxCloses
	_0807E878 
script_0800F402:
	TestBit 0x00000004
	JumpIfNot script_0800F3EA
	EndBlock
	DoPostScriptAction 0x000b
	Wait 0x0010
	SetEntitySpeed 0x0100
	_0807EC64 0x0010
	_0807EDD4 0x0288, 0x0328
	_0807E5F8 0x00000080
	DoPostScriptAction 0x0006
SCRIPT_END
