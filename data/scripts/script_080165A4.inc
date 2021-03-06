SCRIPT_START script_080165A4
	StartScript 
	_0807EF80 0x000a
	_0807EB44 0x0004
	_0807E9D4 
	StopScript 
script_080165B2:
	_0807E974 0x0601
	Jump script_080165B2
	.short 0x0000
script_080165BC:
	Wait 0x001e
	CheckPlayerInRegion2 0x2020
	JumpIfNot script_080165BC
	_0807EF80 0x0003
	Call script_0801637C+1
	Jump script_080165BC
	.short 0x0000
