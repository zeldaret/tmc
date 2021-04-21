SCRIPT_START script_0800AAD8
	BeginBlock 
	_0807E864 
	Call sub_0807DF28
	SetEntityPositionRelative 0x0088, 0x0148
	Call sub_0807F844
	EndBlock 
	Wait 0x003c
	PlaySound SFX_EVAPORATE
	CallWithArg sub_0806DA1C, 0x0000000f
	DoPostScriptAction 0x0006
SCRIPT_END
