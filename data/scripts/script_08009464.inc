SCRIPT_START script_08009464
	Wait 0x003c
	_0807F0C8 0x0000, 0x0000
	LoadRoomEntityList gUnk_080F9C58
	Wait 0x003c
	Call sub_0806D70C
	Wait 0x003c
	ClearLocalFlag 0x00ae
	Call sub_0806D620
	Wait 0x003c
	WaitPlayerAction8 
	_0807EB8C 
	TextboxNoOverlap 0x1d0c
	_0807EA94 
	Wait 0x000a
	Jump script_08009376
	.2byte 0x0000
SCRIPT_START script_080094A4
	BeginBlock 
	Call sub_0806D7C4
	SetEntitySpeed 0x0080
	EndBlock 
	Wait 0x003c
	SetEntity0x20 0x00018000
script_080094BC:
	_0807EE30 
	JumpIfNot script_080094BC
	Wait 0x003c
	DoPostScriptAction 0x0006
SCRIPT_END
