SCRIPT_START script_0800E908
	TextboxNoOverlapFollow 0x4507
	Jump script_0800E914
script_0800E910:
	TextboxNoOverlapFollow 0x4509
script_0800E914:
	_0807EA94 
	_0807E878 
	_0807EB44 0x0000
	Jump script_0800E832
SCRIPT_START script_0800E920
	BeginBlock 
	Call sub_0806C4F8
	DoPostScriptAction 0x000a
	_0807EB44 0x0000
	EndBlock 
script_0800E932:
	CheckEntityInteractType 
	JumpIfNot script_0800E932
	_0807E864 
	_0807EB44 0x0004
	_0807E930 0x0004
script_0800E942:
	Call sub_0806C4A8
	JumpIfNot script_0800E942
	Call sub_0806C4DC
	_0807EA94 
	_0807E878 
	_0807EB44 0x0000
	_0807E930 0x0000
	Jump script_0800E932
	.2byte 0x0000
SCRIPT_START script_0800E964
	BeginBlock 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0000
	EndBlock 
script_0800E974:
	CheckEntityInteractType 
	JumpIfNot script_0800E974
	_0807E864 
	_0807E930 0x0008
	Call sub_0807F2D4
	_0807E930 0x0009
	Call sub_0806B260
	JumpIfNot script_0800E9E4
	_0807EA94 
	DoPostScriptAction 0x000b
	StartPlayerScript script_0800E9F4
	WaitForSomething2 0x00000001
	DoPostScriptAction 0x000a
	TextboxNoOverlapFollow 0x4a24
	_0807EA94 
	_0807E930 0x000a
	Wait 0x0014
	TextboxNoOverlapFollow 0x4a25
	_0807EA94 
	_0807E930 0x0000
	StartPlayerScript script_0800EA1C
	WaitForSomething2 0x00000001
	SetLocalFlag 0x0074
	PlaySound SFX_SECRET
	Wait 0x00f0
	TextboxNoOverlapFollow 0x4a26
	_0807EA94 
	SetLocalFlag 0x0075
script_0800E9E4:
	_0807EA94 
	Wait 0x000f
	_0807E878 
	_0807E930 0x0000
	Jump script_0800E974
