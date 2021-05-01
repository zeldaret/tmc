SCRIPT_START script_08014A80
	BeginBlock 
	DoPostScriptAction 0x000a
	EndBlock 
	WaitForSomething2 0x00000001
	_0807EB74 
	DoPostScriptAction 0x0004
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000001
	TextboxNoOverlap 0x2f0a
	_0807EA94 
	_0807E5F8 0x00000002
script_08014AAC:
	_0807E30C 
	JumpIfNot script_08014AAC
	_0807E864 
	_0807EB74 
	TextboxNoOverlap 0x2f0a
	_0807EA94 
	_0807E878 
	Jump script_08014AAC
	.2byte 0x0000
SCRIPT_START script_08014AC4
	BeginBlock 
	Call sub_0806C870
	DoPostScriptAction 0x000a
	EndBlock 
script_08014AD2:
	_0807E30C 
	JumpIfNot script_08014AD2
	_0807E864 
	_0807EB74 
	StartPlayerScript script_08014B10
	WaitForSomething2 0x00000001
	_0807EB74 
	CheckLocalFlag 0x0064
	JumpIf script_08014AFE
	SetLocalFlag 0x0064
	TextboxNoOverlap 0x2f0b
	Jump script_08014B02
script_08014AFE:
	TextboxNoOverlap 0x2f0c
script_08014B02:
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_08014AD2
	.2byte 0x0000
