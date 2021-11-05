SCRIPT_START script_0800FAE4
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	Call sub_0807F584
	JumpTable script_0800FB06, script_0800FB10, script_0800FB06, script_0800FAFC
script_0800FAFC:
	CallWithArg sub_0807F4F8, 0x0000027c
script_0800FB06:
	CallWithArg sub_0807F464, 0x000000e8
script_0800FB10:
	_0807EDD4 0x00e8, 0x0270
	_0807EB44 0x0000
	DoPostScriptAction 0x0000
	_0807E5F8 0x00000001
	Call sub_080791BC
SCRIPT_END
