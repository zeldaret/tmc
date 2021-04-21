SCRIPT_START script_0800D414
	BeginBlock 
	SetEntitySpeed 0x0100
	Call sub_08068104
	DoPostScriptAction 0x000a
	EndBlock 
script_0800D426:
	_0807EB44 0x0002
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	_0807EB44 0x0004
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	_0807EB44 0x0006
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	_0807EB44 0x0006
	SetIntVariable 0x00000004
	Call sub_0806AF60
	_0807EDD4 0x00a8, 0x01e8
	_0807EB44 0x0006
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	_0807EB44 0x0004
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	_0807EB44 0x0002
	SetIntVariable 0x00000000
	Call sub_0806AF60
	Wait 0x0014
	_0807EB44 0x0002
	SetIntVariable 0x00000004
	Call sub_0806AF60
	_0807EDD4 0x0228, 0x01e8
	Jump script_0800D426
	.2byte 0x0000
	BeginBlock 
	DoPostScriptAction 0x000a
	Call sub_08062A48
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
script_0800D4E4:
	EndBlock 
	Call sub_08062698
	Call sub_080626AC
	CallWithArg sub_0807F0EC, 0x00000009
	JumpTable script_0800D510, script_0800D51A, script_0800D524, script_0800D52E, script_0800D538, script_0800D542, script_0800D54C, script_0800D556, script_0800D560
script_0800D510:
	_0807EE04 0x0038, 0x0068
	Jump script_0800D566
script_0800D51A:
	_0807EE04 0x0078, 0x0068
	Jump script_0800D566
script_0800D524:
	_0807EE04 0x00b8, 0x0068
	Jump script_0800D566
script_0800D52E:
	_0807EE04 0x0038, 0x0090
	Jump script_0800D566
script_0800D538:
	_0807EE04 0x0078, 0x0090
	Jump script_0800D566
script_0800D542:
	_0807EE04 0x00b8, 0x0090
	Jump script_0800D566
script_0800D54C:
	_0807EE04 0x0038, 0x00b8
	Jump script_0800D566
script_0800D556:
	_0807EE04 0x0078, 0x00b8
	Jump script_0800D566
script_0800D560:
	_0807EE04 0x00b8, 0x00b8
script_0800D566:
	EndBlock 
	BeginBlock 
	Call sub_080626C0
	JumpIf script_0800D4E4
	CheckEntityInteractType 
	JumpIf script_0800D584
	_0807EE30 
	JumpIfNot script_0800D566
	Jump script_0800D4E4
script_0800D584:
	EndBlock 
	_0807E864 
	_0807EB74 
	Call sub_0806265C
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800D4E4
SCRIPT_START script_0800D59C
	BeginBlock 
	DoPostScriptAction 0x000a
	Call sub_08062A48
	DoPostScriptAction 0x0000
script_0800D5AC:
	EndBlock 
	Call sub_08062698
	Call sub_080626AC
	CallWithArg sub_0807F0EC, 0x00000004
	JumpTable script_0800D5CE, script_0800D5D8, script_0800D5E2, script_0800D5EC
script_0800D5CE:
	_0807EE04 0x0038, 0x0098
	Jump script_0800D5F2
script_0800D5D8:
	_0807EE04 0x0058, 0x0098
	Jump script_0800D5F2
script_0800D5E2:
	_0807EE04 0x0038, 0x00c8
	Jump script_0800D5F2
script_0800D5EC:
	_0807EE04 0x0058, 0x00c8
script_0800D5F2:
	EndBlock 
	BeginBlock 
	Call sub_080626C0
	JumpIf script_0800D5AC
	_0807EE30 
	JumpIfNot script_0800D5F2
	Jump script_0800D5AC
	.2byte 0x0000
SCRIPT_START script_0800D60C
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0008
	Call sub_0806DAAC
	JumpIf script_0800D6AE
	Call sub_0806DAD0
	CallWithArg sub_0806DA04, 0x00000002
	EndBlock 
script_0800D636:
	_0807EA4C 
	_0807E9F0 
	Call sub_0806DAAC
	JumpIf script_0800D650
	Call sub_0807DF50
	_0807E878 
	Jump script_0800D636
script_0800D650:
	_0807E864 
	Call sub_0807DF28
	Call sub_0807FBC4
	Call sub_0807FBA0
	SetEntitySpeed 0x0700
	_0807F0B4 0x0007
	CameraTargetEntity 
	_0807EDD4 0x01e8, 0x01b8
	Wait 0x003c
	Call sub_0806DAE8
	Wait 0x0078
	Call sub_0806DB44
	JumpIfNot script_0800D698
	LoadRoomEntityList gUnk_080DD730
	DoPostScriptAction 0x0006
SCRIPT_END
