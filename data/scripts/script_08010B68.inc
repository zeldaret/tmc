SCRIPT_START script_08010B68
	BeginBlock 
	_0807E564 
	JumpIfNot script_08010BAC
	Call sub_0807F924
	_0807EB44 0x0004
	_0807EF80 0x0000
	_0807EF80 0x0007
	_0807EF80 0x000a
	EndBlock 
script_08010B88:
	EndBlock 
	BeginBlock 
	_0807E564 
	JumpIfNot script_08010BAC
	CheckEntityInteractType 
	JumpIfNot script_08010B88
	EndBlock 
	_0807E864 
	_0807EB74 
	Call sub_0806E2DC
	_0807EA94 
	_0807E878 
	Jump script_08010B88
script_08010BAC:
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
