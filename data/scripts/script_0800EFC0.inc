SCRIPT_START script_0800EFC0
	BeginBlock 
	SetEntitySpeed 0x0080
	_0807E9D4 
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x007b
	JumpIf script_0800F082
	EndBlock 
	Jump script_0800EFFE
script_0800EFDA:
	_0807EB44 0x0006
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	_0807EB44 0x0004
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
script_0800EFFE:
	_0807EB44 0x0002
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	_0807EB44 0x0002
	CallWithArg sub_0806AF60, 0x00000004
	_0807EDD4 0x0088, 0x0040
	DoPostScriptAction 0x000a
	_0807EB44 0x0002
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	_0807EB44 0x0004
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	_0807EB44 0x0006
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	_0807EB44 0x0006
	CallWithArg sub_0806AF60, 0x00000004
	_0807EDD4 0x0068, 0x0040
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x007b
	JumpIf script_0800F082
	Jump script_0800EFDA
script_0800F082:
	EndBlock 
	Call sub_0806AEE4
	Jump script_0800F082
	.2byte 0x0000
SCRIPT_START script_0800F090
	BeginBlock 
	_0807F0B4 0x0001
	CameraTargetPlayer 
	EndBlock 
script_0800F09A:
	CheckPlayerInRegion 0x01f8, 0x0338, 0x1030
	JumpIfNot script_0800F09A
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	LoadRoomEntityList gUnk_080EE8AC
	StartPlayerScript script_0800F14C
	WaitForSomething2 0x00000001
	_0807E5F8 0x0000001e
	WaitForSomething2 0x00000040
	TextboxNoOverlapFollowPos 0x1201, 0x000c
	_0807EA94 
	WaitForSomething2 0x000003c0
	_0807E8E4_0 
	TextboxNoOverlapFollowPos 0x1202, 0x000c
	_0807EA94 
	_0807F034 0x0067
	WaitPlayerAction8 
	_0807E8E4_0 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000040
	TextboxNoOverlapFollowPos 0x1203, 0x000c
	_0807EA94 
	_0807E5F8 0x00000002
	Call sub_0807DF50
	_0807E878 
	WaitForSomething2 0x00000040
script_0800F11A:
	CheckKinstoneFused 0x0032
	JumpIfNot script_0800F11A
	_0807E864 
	Call sub_0807DF28
	_0807E5F8 0x0000001e
	Wait 0x003c
	_0807E8E4_1 
	WaitForSomething2 0x000003c0
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
