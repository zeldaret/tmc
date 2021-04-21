SCRIPT_START script_080116A8
	BeginBlock 
	_0807EB44 0x0000
	SetEntitySpeed 0x0100
	EndBlock 
	Call sub_0807F338
	WaitForSomething2 0x00000100
	DoPostScriptAction 0x0001
	_0807EDD4 0x01f8, 0x00d0
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	_0807EB44 0x0004
	DoPostScriptAction 0x001c
	Call sub_0807F2D4
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	_0807EB44 0x0000
	DoPostScriptAction 0x001c
	Call sub_0807F2D4
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	_0807EB44 0x0000
	DoPostScriptAction 0x001a
	Call sub_0807F2D4
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	_0807EB44 0x0000
	DoPostScriptAction 0x0014
	PlaySound SFX_CHARGING_UP
	CallWithArg sub_08095420, script_08011890
	Wait 0x00f0
	DoPostScriptAction 0x0016
	PlaySound SFX_1CB
	WaitForSomething2 0x10000000
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0001
	_0807EDD4 0x01d8, 0x00a8
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	DoPostScriptAction 0x0014
	PlaySound SFX_1C4
	CallWithArg sub_0809545C, script_080118D4
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	Wait 0x003c
	DoPostScriptAction 0x0016
	PlaySound SFX_1C5
	_0807E5F8 0x08000000
	WaitForSomething2 0x10000000
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	SetEntitySpeed 0x0100
	DoPostScriptAction 0x0001
	_0807EDD4 0x01f8, 0x0098
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0004
	Wait 0x005a
	_0807EB44 0x0004
	DoPostScriptAction 0x001c
	Call sub_0807F2D4
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Wait 0x001e
	_0807E5F8 0x00000200
	WaitForSomething2 0x00000100
	Call sub_08066CA4
	DoPostScriptAction 0x0008
	Wait 0x0078
	_0807E5F8 0x00000200
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
