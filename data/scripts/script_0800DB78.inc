SCRIPT_START script_0800DB78
	BeginBlock 
	EndBlock 
script_0800DB7C:
	CallWithArg sub_0807F6B4, 0x000000a0
	JumpIf script_0800DB7C
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807F0B4 0x0001
	SetEntityPositionRelative 0x0078, 0x0078
	CameraTargetEntity 
	Call sub_0807F5C0
	_0807EB28 0x1648
	_0807EA94 
	Call sub_0804D7EC
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	Call sub_0807DF50
	_0807E878 
script_0800DBCA:
	CheckRoomFlag 0x0000
	JumpIfNot script_0800DBCA
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	Call sub_0804D810
	Call sub_0807F3F8
	Wait 0x003c
	StartPlayerScript script_0800DDD0
	WaitForSomething2 0x00000004
	_0807E5F8 0x00000001
	WaitForSomething2 0x00000002
	_0807E5F8 0x00000001
	StartPlayerScript script_0800DE00
	WaitForSomething2 0x00000006
	TextboxNoOverlapFollowPos 0x1643, 0x0002
	_0807EA94 
	_0807EB28 0x1645
	_0807EA94 
	Call sub_0807F3F8
	_0807E5F8 0x00000001
	StopBgm
	Call sub_08094F98
	CallWithArg sub_0805DDEC, 0x00000001
	_0807F0C8 0xffff, 0x0000
