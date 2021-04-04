SCRIPT_START script_0800A590
	BeginBlock 
	SetEntitySpeed 0x0080
	SetEntity0x20 0x00000000
	DoPostScriptAction 0x0008
	_0807EB44 0x0000
	Call sub_0807F714
	MoveEntityToPlayer 
	CallWithArg sub_0807F98C, 0xfff00000
	EndBlock 
	_0807E930 0x0023
	WaitForSomething2 0x00000010
	CallWithArg sub_0807F6E8, 0x00000008
	DoPostScriptAction 0x0007
	PlaySound SFX_SPARKLES
	_0807E610 0x00000800
	CallWithArg sub_080960C4, script_0800A65C
	Wait 0x003c
	_0807EDD4 0x0088, 0x0068
	Wait 0x0078
	_0807E5F8 0x00000800
	PlaySound SFX_143
	_0807EF3C 0x0000, 0x0020
	_0807E930 0x001f
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000010
	Wait 0x0078
	DoPostScriptAction 0x0004
	Wait 0x003c
	_0807E5F8 0x00000200
	Wait 0x0001
	DoPostScriptAction 0x0008
	WaitForSomething2 0x00000010
	DoPostScriptAction 0x0006
SCRIPT_END
