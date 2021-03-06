SCRIPT_START script_08012D70
script_08012D70:
	CheckPlayerInRegion 0x0088, 0x0048, 0x3030
	JumpIfNot script_08012D70
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_08012DB0
	WaitForSomething2 0x00000001
	_0807EB28 0x132d
	_0807EA94 
	SetLocalFlag 0x0014
	Call sub_0807DF50
	_0807E878 
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
