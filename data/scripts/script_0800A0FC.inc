SCRIPT_START script_0800A0FC
	EndBlock 
script_0800A0FE:
	CheckGlobalFlag 0x0051
	JumpIfNot script_0800A0FE
	BeginBlock 
	_0807E864 
	Call sub_0807DF28
	StopBgm
	Call sub_0807FBFC
	SetEntityPositionRelative 0x00b0, 0x0058
	Call sub_0807F844
	_0807E8E4_3 
	CallWithArg sub_0807F75C, 0x00d00060
	CallWithArg sub_08094AE8, script_0800A160
	PlaySound SFX_APPARATE
	_0807E778 0x0002
	DoFade6 
	EndBlock 
	WaitFor_2 
	WaitForSomething2 0x00000004
	CallWithArg sub_0806DA1C, 0x00000006
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
