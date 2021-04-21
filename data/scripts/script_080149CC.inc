SCRIPT_START script_080149CC
	BeginBlock 
	SetEntitySpeed 0x0080
	Call sub_0806C870
	DoPostScriptAction 0x000a
	EndBlock 
script_080149DE:
	_0807E30C 
	JumpIfNot script_080149DE
	_0807E864 
	_0807EB74 
	Call sub_0806C90C
	_0807EA94 
	CheckLocalFlag 0x0064
	JumpIfNot script_08014A20
	CheckLocalFlag 0x00b1
	JumpIf script_08014A20
	SetLocalFlag 0x00b1
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0001
	_0807EDD4 0x0068, 0x00f8
	PlaySound SFX_SECRET
	_0807EB74 
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
script_08014A20:
	_0807E878 
	Jump script_080149DE
	.2byte 0x0000
SCRIPT_START script_08014A28
	BeginBlock 
	Call sub_0806C870
	DoPostScriptAction 0x000a
	EndBlock 
script_08014A36:
	_0807E30C 
	JumpIfNot script_08014A36
	_0807E864 
	_0807EB74 
	Call sub_0806C90C
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_08014A36
	.2byte 0x0000
SCRIPT_START script_08014A54
	BeginBlock 
	Call sub_0806C870
	DoPostScriptAction 0x000a
	EndBlock 
script_08014A62:
	_0807E30C 
	JumpIfNot script_08014A62
	_0807E864 
	_0807EB74 
	Call sub_0806C90C
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_08014A62
	.2byte 0x0000
