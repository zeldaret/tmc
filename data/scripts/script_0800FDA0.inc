SCRIPT_START script_0800FDA0
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4 
	EndBlock 
script_0800FDB2:
	CheckEntityInteractType 
	JumpIfNot script_0800FDB2
	_0807E864 
	_0807EB74 
	Call sub_08069888
	_0807EA94 
	_0807E878 
	Jump script_0800FDB2
	.2byte 0x0000
SCRIPT_START script_0800FDCC
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4 
	SetEntitySpeed 0x0040
	EndBlock 
script_0800FDE2:
	Call sub_08069A60
script_0800FDE8:
	Call sub_0806991C
script_0800FDEE:
	EndBlock 
	BeginBlock 
	Call sub_08069ACC
	JumpIf script_0800FE06
	_0807EE30 
	JumpIfNot script_0800FDEE
	Jump script_0800FDE2
script_0800FE06:
	EndBlock 
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	Wait 0x001e
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	Wait 0x001e
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	Wait 0x001e
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	Wait 0x003c
	Call sub_08069A3C
	Jump script_0800FDE8
	.2byte 0x0000
SCRIPT_START script_0800FE44
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4 
	SetEntitySpeed 0x0040
	EndBlock 
script_0800FE5A:
	Call sub_08069AA8
script_0800FE60:
	Call sub_080699AC
script_0800FE66:
	EndBlock 
	BeginBlock 
	Call sub_08069ACC
	JumpIf script_0800FE7E
	_0807EE30 
	JumpIfNot script_0800FE66
	Jump script_0800FE5A
script_0800FE7E:
	EndBlock 
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	Wait 0x001e
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	Wait 0x001e
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	Wait 0x001e
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	Wait 0x003c
	Call sub_08069A84
	Jump script_0800FE60
	.2byte 0x0000
SCRIPT_START script_0800FEBC
	BeginBlock 
	CheckInventory1 0x0012
	JumpIf script_0800FF0E
	_0807EB44 0x0006
	_0807E9D4 
	CallWithArg sub_0807F3D8, 0x00000008
	EndBlock 
script_0800FED8:
	EndBlock 
	BeginBlock 
	DoPostScriptAction 0x000b
	Call sub_080642B8
	CheckEntityInteractType 
	JumpIfNot script_0800FED8
	EndBlock 
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000008
	Call sub_08064428
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800FED8
script_0800FF0E:
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0006
SCRIPT_END
