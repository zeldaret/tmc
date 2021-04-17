SCRIPT_START script_08010A98
	BeginBlock 
	_0807EB44 0x0004
	CallWithArg sub_080672B0, 0x00000000
	DoPostScriptAction 0x000a
	Call sub_08067314
	EndBlock 
script_08010AB4:
	CheckEntityInteractType 
	JumpIfNot script_08010AB4
	_0807E864 
	_0807EB74 
	CallWithArg sub_080672B0, 0x00000004
	Call sub_08067304
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	CallWithArg sub_080672B0, 0x00000000
	Jump script_08010AB4
SCRIPT_START script_08010AE4
	BeginBlock 
	CheckInventory1 0x0067
	JumpIfNot script_08010B62
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	SetEntitySpeed 0x0180
	CallWithArg sub_0807F348
	Call sub_0806075C
	EndBlock 
	_0807EA94 
	Call sub_080606C0
script_08010B10:
	EndBlock 
	Call sub_0806076C
	DoPostScriptAction 0x0007
script_08010B1C:
	Call sub_08060700
script_08010B22:
	EndBlock 
	BeginBlock 
	_0807E564 
	JumpIf script_08010B3A
	CallWithArg sub_080608E4, 0x00000000
	JumpIf script_08010B44
script_08010B3A:
	_0807EE30 
	JumpIfNot script_08010B22
	Jump script_08010B10
script_08010B44:
	EndBlock 
	DoPostScriptAction 0x0000
script_08010B4A:
	EndBlock 
	BeginBlock 
	CallWithArg sub_080608E4, 0x00000001
	JumpIf script_08010B4A
	EndBlock 
	Jump script_08010B1C
script_08010B62:
	DoPostScriptAction 0x0006
SCRIPT_END
