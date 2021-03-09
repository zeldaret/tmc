SCRIPT_START script_0800AB6E
	Call sub_0808D2CC
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	_0807E8E4_0 
	_0807E5F8 0x00000040
	WaitForSomething2 0x00000080
	SetEntityPosition 0x0000, 0xffe0
	Call sub_0807F5C0
	Wait 0x003c
	CallWithArg sub_0805DE18, 0x00000001
	_0807F0C8 0x0000, 0x0000
	Wait 0x003c
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	TextboxNoOverlapFollowPos 0x165f, 0x000e
	_0807EA94 
	StartPlayerScript script_0800ACBC
	WaitForSomething2 0x00000001
	TextboxNoOverlapFollowPos 0x1660, 0x000e
	_0807EA94 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	TextboxNoOverlapFollowPos 0x1661, 0x000e
	_0807EA94 
	_0807E5F8 0x00000008
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	SetEntityPosition 0x0000, 0x0020
	Call sub_0807F5C0
	WaitForSomething2 0x00000010
	StartPlayerScript script_0800ACE0
	WaitForSomething2 0x00000001
	Wait 0x003c
	TextboxNoOverlapFollowPos 0x1662, 0x000e
	_0807EA94 
	TextboxNoOverlapFollowPos 0x1663, 0x000e
	_0807EA94 
	SetEntityPosition 0x0000, 0xffe0
	Call sub_0807F5C0
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	StartPlayerScript script_0800AD54
	WaitForSomething2 0x00000001
	Wait 0x003c
	TextboxNoOverlapFollowPos 0x1665, 0x000e
	_0807EA94 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	Wait 0x0078
	Call sub_0808D280
	Wait 0x0078
	_0807E778 0x0004
	DoFade5 
	WaitFor_2 
	Call sub_0807FB94
	MoveEntityToPlayer 
	Call sub_0807F844
	_0807F0B4 0x0004
	CameraTargetPlayer 
	_0807E5F8 0x80000000
	DoFade4 
	WaitFor_2 
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
