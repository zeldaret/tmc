SCRIPT_START script_080094FC
	BeginBlock 
	Call sub_08067100
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_08009512:
	CheckEntityInteractType 
	JumpIfNot script_08009512
	_0807E864 
	DoPostScriptAction 0x0001
	_0807EB74 
	Call sub_080670B4
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Jump script_08009512
	.2byte 0x0000
SCRIPT_START script_08009538
	BeginBlock 
	Call sub_08067100
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
script_0800954E:
	CheckEntityInteractType 
	JumpIfNot script_0800954E
	_0807E864 
	DoPostScriptAction 0x0001
	_0807EB74 
	Call sub_080670E4
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Jump script_0800954E
	.2byte 0x0000
SCRIPT_START script_08009574
	BeginBlock 
	Call sub_08067314
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	SetIntVariable 0x00000000
	Call sub_080672B0
	EndBlock 
script_08009592:
	CheckEntityInteractType 
	JumpIfNot script_08009592
	_0807E864 
	_0807EB74 
	SetIntVariable 0x00000004
	Call sub_080672B0
	Call sub_080672C8
	_0807EA94 
	Wait 0x000f
	_0807E878 
	_0807EB44 0x0004
	SetIntVariable 0x00000000
	Call sub_080672B0
	Jump script_08009592
	.2byte 0x0000
SCRIPT_START script_080095CC
	BeginBlock 
	Call sub_0806BE3C
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	EndBlock 
script_080095DE:
	Call sub_0806BF44
	JumpIf script_080095F2
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0006
SCRIPT_END
