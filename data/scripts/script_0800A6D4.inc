SCRIPT_START script_0800A6D4
	BeginBlock 
	_0807E864 
	Call sub_0807DF28
	SetEntityPositionRelative 0x0088, 0x0070
	Call sub_0807F844
	PlaySound SFX_APPARATE
	EndBlock 
	Wait 0x003c
	CallWithArg sub_0806DA1C, 0x00000009
	DoPostScriptAction 0x0006
SCRIPT_END
