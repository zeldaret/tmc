SCRIPT_START script_08008D8C
	BeginBlock 
	Call sub_08061FD8
	Call sub_08061E70
	DoPostScriptAction 0x000a
	EndBlock 
script_08008DA0:
	CheckEntityInteractType 
	JumpIfNot script_08008DA0
	_0807E864 
	_0807EB74 
	Call sub_08061FD8
	Call sub_08062048
	_0807EA94 
	_0807E878 
	Jump script_08008DA0
	.2byte 0x0000
SCRIPT_START script_08008DC0
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock 
script_08008DD8:
	CheckEntityInteractType 
	JumpIfNot script_08008DD8
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x00000000
	Call sub_080643D8
	_0807EA94 
	_0807E878 
	_0807EB44 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_08008DD8
SCRIPT_START script_08008E08
	BeginBlock 
	SetEntityPositionRelative 0x0088, 0x0078
	EndBlock 
script_08008E12:
	CheckPlayerInRegion 0x00d8, 0x0098, 0x4020
	JumpIfNot script_08008E12
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807F0B4 0x0001
	CameraTargetEntity 
	WaitForPlayerAction0x17 
	Wait 0x003c
	StartPlayerScript script_08008F74
	WaitForSomething2 0x00000020
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	Wait 0x003c
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	Wait 0x000f
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	TextboxNoOverlapFollowPos 0x1053, 0x000e
	_0807EA94 
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000040
	WaitForSomething2 0x00000020
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	_0807F034 0x0035
	WaitPlayerAction8 
	StartPlayerScript script_08008FC0
	WaitForSomething2 0x00000020
	_0807E8E4_0 
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000010
	Wait 0x0078
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807E8E4_1 
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	_0807F034 0x0047
	WaitPlayerAction8 
	SetIntVariable 0x00000003
	Call sub_0807F420
	_0807E8E4_0 
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807F0B4 0x0004
	CameraTargetPlayer 
	SetGlobalFlag 0x0015
	Call sub_0806DCC0
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
