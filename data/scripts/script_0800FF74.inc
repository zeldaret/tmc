SCRIPT_START script_0800FF74
	BeginBlock 
	_0807EB44 0x0002
	_0807E9D4 
	CallWithArg sub_0807F3D8, 0x00000008
	Call sub_080644A4
	ClearLocalFlag 0x00c7
	EndBlock 
script_0800FF92:
	EndBlock 
	BeginBlock 
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x00ce
	JumpIf script_0800FFCC
	DoPostScriptAction 0x000b
	Call sub_08064198
	CheckLocalFlag 0x00c7
	JumpIfNot script_0800FFCC
	Call sub_08064488
	CheckPlayerInRegion2 0x4040
	JumpIfNot script_0800FFCC
	Call sub_08064470
	JumpIf script_08010014
script_0800FFCC:
	CheckEntityInteractType 
	JumpIfNot script_0800FF92
	EndBlock 
	SetLocalFlag 0x00c7
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000008
	CheckInventory1 0x0048
	JumpIf script_0800FFF8
	TextboxNoOverlap 0x3401
	_0807EA94 
	Jump script_08010060
script_0800FFF8:
	CheckLocalFlag 0x00ce
	JumpIfNot script_0801000A
	TextboxNoOverlap 0x340b
	_0807EA94 
	Jump script_08010060
script_0801000A:
	TextboxNoOverlap 0x3402
	_0807EA94 
	Jump script_08010060
script_08010014:
	EndBlock 
	_0807E888 
	Call sub_0807F594
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000008
	PlaySound SFX_TASK_COMPLETE
	TextboxNoOverlap 0x340a
	_0807EA94 
	_0807EB44 0x0004
	CallWithArg sub_0807F3D8, 0x0000000c
	SetEntitySpeed 0x0100
	_0807EDD4 0x0018, 0x0108
	_0807EB44 0x0002
	CallWithArg sub_0807F3D8, 0x00000008
	SetLocalFlag 0x00ce
script_08010060:
	Call sub_080644A4
	CallWithArg sub_0807F5B0, 0x0000000a
	_0807E878 
	Jump script_0800FF92
	.2byte 0x0000
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	CallWithArg sub_080672B0, 0x00000000
	EndBlock 
script_08010090:
	CheckEntityInteractType 
	JumpIfNot script_08010090
	_0807E864 
	_0807EB74 
	CallWithArg sub_080672B0, 0x00000004
	TextboxNoOverlapFollow 0x0a01
	_0807EA94 
	Wait 0x000f
	_0807E878 
	_0807EB44 0x0004
	CallWithArg sub_080672B0, 0x00000000
	Jump script_08010090
	DoPostScriptAction 0x0006
SCRIPT_END
