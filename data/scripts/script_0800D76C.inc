SCRIPT_START script_0800D76C
	BeginBlock 
	Call sub_0807F360
	DoPostScriptAction 0x000b
	SetEntitySpeed 0x0200
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock 
	WaitForSomething2 0x00000008
	DoPostScriptAction 0x0004
	Wait 0x003c
	PlaySound SFX_123
	CallWithArg sub_0807F464, 0x000001e0
	_0807EDD4 0x01e0, 0x01d8
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000010
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	PlaySound SFX_PLY_JUMP
	_0807EF3C 0x0180, 0x0030
	_0807EB44 0x0002
	DoPostScriptAction 0x0001
	WaitForSomething2 0x00000008
	Jump script_0800D80C
SCRIPT_START script_0800D7DC
	BeginBlock 
	Call sub_0807F360
	DoPostScriptAction 0x000b
	SetEntityPositionRelative 0x0268, 0x01d8
	SetEntitySpeed 0x0100
	EndBlock 
	WaitForSomething2 0x00000002
	_0807EDD4 0x01f0, 0x01d8
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000002
script_0800D80C:
	SetEntitySpeed 0x0100
	_0807EEF4 0x0000, 0xffe0
	DoPostScriptAction 0x000e
	Call sub_0806CA5C
	SetEntity0x20 0x00040000
	PlaySound SFX_F5
script_0800D82A:
	CallWithArg sub_0807F8D0, 0xffffe000
	Call sub_0807F8BC
	JumpIf script_0800D82A
	_0807E5F8 0x00000004
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
