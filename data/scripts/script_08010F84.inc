SCRIPT_START script_08010F84
	Wait 0x003c
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000200
	StartPlayerScript script_080110BC
	WaitForSomething2 0x00000400
	TextboxNoOverlapFollowPos 0x1047, 0x0000
	_0807EA94 
	Call sub_0806DC3C
	Call sub_080791BC
	CallWithArg sub_0807F244, 0x0000000d
	CallWithArg sub_0807F29C, gUnk_080049F6
	Wait 0x001e
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000200
	CallWithArg sub_0807F29C, 0x00000000
	Call sub_0806DC58
	Wait 0x003c
	_0807E5F8 0x08000000
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	Wait 0x000f
	PlaySound SFX_125
	CallWithArg sub_0807FB28, 0x00000003
	CallWithArg sub_0805DE18, 0x00000002
	_0807F0C8 0x0000, 0x0000
	_0807E5F8 0x00000010
	WaitForSomething2 0x00000020
	StopBgm
	Wait 0x003c
	TextboxNoOverlapFollowPos 0x104a, 0x0000
	_0807EA94 
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000200
	TextboxNoOverlapFollowPos 0x1049, 0x0000
	_0807EA94 
	SetEntityPositionRelative 0x01f8, 0x0098
	Wait 0x0078
	_0807E5F8 0x00000100
	WaitForSomething2 0x00000200
	Call sub_0804BCDC
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
