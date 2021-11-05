SCRIPT_START script_08015C7C
	BeginBlock
	SetEntitySpeed 0x0080
	EndBlock
	DoPostScriptAction 0x0001
	_0807EDD4 0x0168, 0x0058
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	CallWithArg sub_0807F238, 0x000003c5
	Call sub_0807F304
	MessageFromTargetPos 0x1318, 0x000c
	WaitUntilTextboxCloses
	CallWithArg sub_0807F238, 0x000003c9
	Call sub_0807F304
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000100
	Call sub_080791BC
SCRIPT_END
