SCRIPT_START script_0800A6A4
	BeginBlock 
	_0807E864 
	Call sub_0807DF28
	SetEntityPositionRelative 0x0088, 0x0068
	Call sub_0807F844
	EndBlock 
	Wait 0x003c
	PlaySound SFX_EVAPORATE
	CallWithArg sub_0806DA1C, 0x00000008
	DoPostScriptAction 0x0006
SCRIPT_END
