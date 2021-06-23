SCRIPT_START script_08012D70
	CheckPlayerInRegion 0x0088, 0x0048, 0x3030
	JumpIfNot script_08012D70
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_08012DB0
	WaitForSomething2 0x00000001
	_0807EB28 0x132d
	_0807EA94 
.ifdef JP
	SetLocalFlag 0x0015
.else
.ifdef EU
	SetLocalFlag 0x0015
.else
	SetLocalFlag 0x0014
.endif
.endif
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
