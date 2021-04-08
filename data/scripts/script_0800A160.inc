SCRIPT_START script_0800A160
	BeginBlock 
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000b
	_0807E930 0x0002
	SetEntityPositionRelative 0x00b0, 0x0080
	CallWithArg sub_0807F98C, 0xff800000
	CallWithArg sub_080960C4, script_0800A1B4
	EndBlock 
	PlaySound SFX_SPARKLES
	_0807EF3C 0xff80, 0x0000
	PlaySound SFX_143
	_0807E930 0x0004
	_0807E5F8 0x00000002
	Wait 0x003c
	_0807E5F8 0x00000004
SCRIPT_END
	.2byte 0x0000
