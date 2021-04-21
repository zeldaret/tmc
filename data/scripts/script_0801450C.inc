SCRIPT_START script_0801450C
	BeginBlock 
	_0807E9D4 
	_0807EB44 0x0000
	SetEntitySpeed 0x01c0
	DoPostScriptAction 0x000a
	EndBlock 
	_0807E864 
	Call sub_0807DF28
	Call sub_0806E20C
	_0807EA94 
	Call sub_0806E23C
	ClearLocalFlag 0x0093
	ClearLocalFlag 0x0092
	Call sub_0807DF50
	Jump script_080144FC
	.2byte 0x0000
SCRIPT_START script_08014548
	BeginBlock 
	EndBlock 
script_0801454C:
	CheckPlayerInRegion 0x0078, 0x0088, 0x0810
	JumpIfNot script_0801454C
	CheckRoomFlag 0x0000
	JumpIfNot script_0801454C
	_0807E864 
	_0807EB28 0x4217
	_0807EA94 
	StartPlayerScript script_08014588
	Wait 0x0010
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	_0807E878 
	Jump script_0801454C
SCRIPT_END
	.2byte 0x0000
