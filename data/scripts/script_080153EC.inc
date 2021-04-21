SCRIPT_START script_080153EC
	BeginBlock 
	_0807F0B4 0x0007
	SetEntityPositionRelative 0x0078, 0x0068
	CameraTargetEntity 
	EndBlock 
	PlayBgm BGM_EZLO_STORY
	_0807E778 0x0004
	DoFade4 
	WaitFor_2 
	Wait 0x003c
	_0807E5F8 0x00000080
	WaitForSomething2 0x00000100
	_0807E5F8 0x00000800
	WaitForSomething2 0x00001000
	_0807E5F8 0x00000880
	WaitForSomething2 0x00001100
	_0807F0B4 0x0004
	SetEntityPositionRelative 0x0078, 0x0090
	TextboxNoOverlapFollowPos 0x1330, 0x0002
	_0807EA94 
	_0807E5F8 0x00008000
	WaitForSomething2 0x00010000
	_0807E5F8 0x00000880
	WaitForSomething2 0x00001000
	Wait 0x003c
	TextboxNoOverlapFollowPos 0x130d, 0x0002
	_0807EA94 
	TextboxNoOverlapFollowPos 0x130e, 0x000c
	_0807EA94 
	TextboxNoOverlapFollowPos 0x130f, 0x0002
	_0807EA94 
	TextboxNoOverlapFollowPos 0x1310, 0x000c
	_0807EA94 
	CallWithArg sub_0805DDEC, 0x00000001
	_0807F0C8 0xffff, 0x0000
