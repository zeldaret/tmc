SCRIPT_START script_0800ACE0
	BeginBlock 
	Call sub_08094BE0
	CallWithArg sub_0807F238, 0x0000045b
	PlaySound SFX_109
	EndBlock 
	Call sub_0807F304
	Wait 0x005a
	_0807E5F8 0x00000008
	BeginBlock 
	CallWithArg sub_0807F6F8, 0x00000008
	CallWithArg sub_0807F238, 0x000008e4
	EndBlock 
	Call sub_0807F304
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Wait 0x003c
	_0807EB44 0x0002
	DoPostScriptAction 0x0000
	Wait 0x0004
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000001
	Call sub_080791BC
	.2byte 0x0000
