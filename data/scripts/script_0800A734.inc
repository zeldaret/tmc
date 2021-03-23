SCRIPT_START script_0800A734
	BeginBlock 
	_0807E864 
	Call sub_0807DF28
	SetEntityPositionRelative 0x00d8, 0x01c8
	Call sub_0807F844
	PlaySound SFX_APPARATE
	EndBlock 
	Wait 0x003c
	CallWithArg sub_0806DA1C, 0x0000000b
	DoPostScriptAction 0x0006
SCRIPT_END
