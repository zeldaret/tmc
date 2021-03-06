SCRIPT_START script_08012430
	StartScript 
	_0807EF80 0x000a
	_0807EB44 0x0004
	_0807E930 0x0000
	StopScript 
script_08012440:
	CheckEntityInteractType 
	JumpIfNot script_08012440
	_0807E864 
	_0807E930 0x0008
	Call sub_0807F2D4
	_0807E930 0x0009
	Call sub_0806B2B4
	_0807EA94 
	CheckLocalFlag 0x00b3
	JumpIf script_08012474
	SetLocalFlag 0x00b3
	_0807F034 0x0062
	WaitPlayerAction8 
	SetLocalFlag 0x00d0
script_08012474:
	_0807E878 
	_0807E930 0x0000
	Jump script_08012440
	.short 0x0000
	StartScript 
	Call sub_08054564
	StopScript 
script_0801248A:
	CheckPlayerInRegion 0x0208, 0x02c8, 0x4020
	JumpIfNot script_0801248A
	SoundReq0x80100000 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_08012AB0
	TextboxNoOverlapFollowPos 0x1101, 0x0007
	_0807EA94 
	CameraTargetPlayer 
	_0807E778 0x0004
	_0807E80C 0x00000000
	WaitFor_2 
	_0807E858 0x0000
	Call sub_080791BC
	LoadRoomEntityList gUnk_080F4D70
	Call DeleteAllEnemies
	SetEntityPositionRelative 0x01680388
	Call sub_0807F844
	_0807E778 0x0004
	_0807E800 0x00000000
	WaitFor_2 
	SoundReq2 0x000e
	_0807E5F8 0x00000010
	WaitForSomething2 0x00000020
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000040
	WaitForSomething2 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	SoundReq0x80100000 
	_0807E778 0x0004
	_0807E80C 0x00000000
	WaitFor_2 
	MoveEntityToPlayer 
	Call sub_0807F844
	CameraTargetPlayer 
	_0807E788 0xffffffff
	_0807E778 0x0004
	_0807E800 0x00000000
	WaitFor_2 
	Call sub_0807DF50
	_0807E878 
	SoundReq2 0xffff
script_08012566:
	CheckPlayerInRegion 0x03a0, 0x01a0, 0x1020
	JumpIfNot script_08012566
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	Call sub_0806DC7C
	SoundReq0x80100000 
	StartPlayerScript script_08012AC8
	WaitForSomething2 0x00000001
	SetEntityPositionRelative 0x01680388
	_0807F0B4 0x0001
	CameraTargetEntity 
	Wait 0x005a
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	SoundReq2 0x000e
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000040
	WaitForSomething2 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000010
	WaitForSomething2 0x00000020
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	SoundReq0x80100000 
	SoundReq2 0x0033
	Call sub_0807DF50
	_0807E878 
	_0807E5F8 0x00000050
	LoadRoomEntityList gUnk_080F51D0
	WaitForSomething2 0x00000008
	_0807E864 
	Call sub_0807FA40
	Call sub_0807DF28
	SoundReq 0x0072
	SoundReq0x80100000 
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	StartPlayerScript script_08012AF0
	WaitForSomething2 0x00000001
	_0807E8E4_0 
	SoundReq2 0x000e
	Wait 0x001e
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	SoundReq0x80100000 
	Wait 0x003c
	SoundReq2 0xffff
	Call sub_0806DCA0
	_0807F0B4 0x0004
	CameraTargetPlayer 
	Call sub_0807DF50
	_0807E878 
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000008
	SoundReq0x80100000 
	Wait 0x003c
	SoundReq2 0xffff
	Call sub_08054570
	SetGlobalFlag 0x0014
	CallWithArg sub_0807F6F8, 0x00000008
	Call sub_0807DF50
	_0807E878 
	_0807EF80 0x0006
SCRIPT_END
