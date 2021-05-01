SCRIPT_START script_0800F724
	BeginBlock 
	DoPostScriptAction 0x0008
	EndBlock 
script_0800F72C:
	CheckLocalFlag 0x00cd
	JumpIfNot script_0800F72C
	DoPostScriptAction 0x0007
	Jump script_0800F584
SCRIPT_START script_0800F73C
	CheckLocalFlag 0x00cd
	JumpIf script_0800FA4C
	_0807E864 
	Call sub_0807DF28
	SetEntityPositionRelative 0x00c8, 0x0148
	Call sub_0807F844
	_0807E778 0x0002
	DoFade6 
	WaitFor_2 
	StartPlayerScript script_0800FA54
	_0807E5F8 0x00000002
	_0807F0B4 0x0001
	SetEntityPositionRelative 0x00c8, 0x0218
	Call sub_0807F5C0
	Wait 0x0064
	_0807F0B4 0x0002
	SetEntityPositionRelative 0x00c8, 0x0368
	Call sub_0807F5C0
	WaitForSomething2 0x00000001
	WaitForSomething2 0x00000004
	TextboxNoOverlapFollowPos 0x2501, 0x0000
	_0807EA94 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	_0807F0B4 0x0004
	CameraTargetPlayer 
	Call sub_0807DF50
	_0807E878 
	_0807E5F8 0x00000010
	WaitForSomething2 0x00000004
	_0807E864 
	Call sub_0807DF28
	StartPlayerScript script_0800FA78
	WaitForSomething2 0x00000001
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	TextboxNoOverlapFollowPos 0x2503, 0x000e
	_0807EA94 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	Call sub_0807DF50
	_0807E878 
	WaitForSomething2 0x00000004
	_0807E864 
	Call sub_0807DF28
	StartPlayerScript script_0800FA9C
	WaitForSomething2 0x00000001
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	TextboxNoOverlapFollowPos 0x2504, 0x000e
	_0807EA94 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	Call sub_0807DF50
	_0807E878 
	WaitForSomething2 0x00000004
	_0807E864 
	Call sub_0807DF28
	StartPlayerScript script_0800FAC0
	WaitForSomething2 0x00000001
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	TextboxNoOverlapFollowPos 0x2505, 0x000e
	_0807EA94 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	Call sub_0807DF50
	_0807E878 
	WaitForSomething2 0x00000004
	_0807E864 
	Call sub_0807DF28
	Call sub_08063C5C
	PlaySound SFX_CUCCO_MINIGAME_BELL
	Wait 0x001e
	_0807E8E4_0 
	Call sub_0807F3F8
	Wait 0x003c
	TextboxNoOverlapFollowPos 0x1021, 0x000e
	_0807EA94 
	StartPlayerScript script_0800FAE4
	SetEntityPositionRelative 0x00f0, 0x0258
	_0807F0B4 0x0001
	CameraTargetEntity 
	Wait 0x001e
	Call sub_08063C2C
	WaitForSomething2 0x00000001
	TextboxNoOverlapFollowPos 0x1022, 0x000e
	_0807EA94 
	_0807E8E4_0 
	Call sub_08063C14
	Call sub_08094CDC
	Wait 0x001e
	TextboxNoOverlapFollowPos 0x1023, 0x000e
	_0807EA94 
	Call sub_08063C14
	Call sub_08094DD8
	Wait 0x001e
	TextboxNoOverlapFollowPos 0x1024, 0x000e
	_0807EA94 
	Call sub_08063C14
	Call sub_08094D34
	Wait 0x001e
	TextboxNoOverlapFollowPos 0x1025, 0x000e
	_0807EA94 
	Call sub_08063C5C
	TextboxNoOverlapFollowPos 0x1026, 0x000e
	_0807EA94 
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	_0807E8E4_1 
	Call sub_08063C2C
	TextboxNoOverlapFollowPos 0x1027, 0x0000
	_0807EA94 
	Call sub_08063C74
	Wait 0x003c
	Call sub_08063C14
	_0807E8E4_0 
	TextboxNoOverlapFollowPos 0x1028, 0x000e
	_0807EA94 
	_0807E8E4_1 
	TextboxNoOverlapFollowPos 0x1029, 0x0000
	_0807EA94 
	_0807E8E4_0 
	TextboxNoOverlapFollowPos 0x102a, 0x000e
	_0807EA94 
	Call sub_08063C14
	Call sub_08094D70
	PlaySound SFX_103
	_0807E5F8 0x00000002
	WaitForSomething2 0x00000004
	Call sub_08063C14
	Call sub_08094D10
	Wait 0x001e
	Call sub_08094E0C
	Wait 0x001e
	_0807E8E4_1 
	Call sub_0807F3F8
	Wait 0x003c
	TextboxNoOverlapFollowPos 0x102b, 0x0000
	_0807EA94 
	_0807F034 0x000d
	WaitPlayerAction8 
	Call sub_0806DC3C
	Call sub_080791BC
	CallWithArg sub_0807F244, 0x0000000d
	SetIntVariable 0x000000ff
	Call sub_0807F5B0
	CallWithArg sub_0807F29C, gUnk_080049D6
	Wait 0x00b7
	SetIntVariable 0x00000000
	Call sub_0807F5B0
	TextboxNoOverlapFollowPos 0x102c, 0x0000
	_0807EA94 
	CallWithArg sub_0807F29C, 0x00000000
	Call sub_0806DC58
	_0807F0B4 0x0004
	CameraTargetPlayer 
	Wait 0x000a
	_0807E5F8 0x00000002
	Call sub_08063C44
	SetLocalFlag 0x00cd
	Call sub_0807DF50
	_0807E878 
script_0800FA4C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
