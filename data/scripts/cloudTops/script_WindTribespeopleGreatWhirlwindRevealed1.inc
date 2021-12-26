@ Cloud Tops WindTribespeople great whirlwind revealed 2
SCRIPT_START script_WindTribespeopleGreatWhirlwindRevealed1
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
