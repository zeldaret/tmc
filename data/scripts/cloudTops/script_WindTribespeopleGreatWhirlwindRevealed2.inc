@ Cloud Tops WindTribespeople great whirlwind revealed
SCRIPT_START script_WindTribespeopleGreatWhirlwindRevealed2
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
