SCRIPT_START script_0801319A
	EndBlock 
	BeginBlock 
	CameraTargetEntity 
	MoveEntityToPlayer 
	Call sub_0806AB74
	Jump script_0801319A
SCRIPT_START script_080131AC
	CheckPlayerInRegion 0x0098, 0x0038, 0x2060
	JumpIfNot script_080131AC
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_080132E4
	WaitForSomething2 0x00000002
	_0807EB28 0x1601
	_0807EA94 
	StartPlayerScript script_0801330C
	WaitForSomething2 0x00000002
	_0807E778 0x0004
	DoFade5 
	WaitFor_2 
	LoadRoomEntityList gUnk_080F5680
	StartPlayerScript script_08013330
	WaitForSomething2 0x00000002
	MoveEntityToPlayer 
	SetEntityPosition 0x0000, 0xfff0
	Call sub_0807F844
	CameraTargetEntity 
	Call sub_080536B8
	_0807E864 
	Call sub_0807DF28
	WaitFor_2 
	TextboxNoOverlapFollowPos 0x1602, 0x000c
	_0807EA94 
	_0807E5F8 0x00000008
	WaitForSomething2 0x00000010
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000040
	PlayBgm BGM_VAATI_THEME
	StartPlayerScript script_0801334C
	WaitForSomething2 0x00000002
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000040
	StartPlayerScript script_08013378
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000042
	TextboxNoOverlapFollowPos 0x1603, 0x000c
	_0807EA94 
	_0807E5F8 0x00000020
	WaitForSomething2 0x00000040
	_0807E788 0xffff7fff
	_0807E778 0x0004
	DoFade5 
	WaitFor_2 
	StopBgm
	_0807E858 0x0000
	Wait 0x003c
	CameraTargetPlayer 
	Call sub_0807F5C0
	TextboxNoOverlapFollowPos 0x1604, 0x0007
	_0807EA94 
	_0807E788 0xffffffff
	_0807E778 0x0004
	DoFade4 
	WaitFor_2 
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000002
	_0807EB28 0x1605
	_0807EA94 
	SetLocalFlag 0x0078
	PlayBgm BGM_CASTLE_COLLAPSE
	SetGlobalFlag 0x005d
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
