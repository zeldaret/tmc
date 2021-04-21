SCRIPT_START script_08013114
	BeginBlock 
	_0807E9D4 
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0012
	Call sub_0807F348
	EndBlock 
script_08013128:
	EndBlock 
	BeginBlock 
	CheckEntityInteractType 
	JumpIf script_0801313C
	Call sub_0806AEE4
	Jump script_08013128
script_0801313C:
	_0807E864 
	EndBlock 
	_0807EB74 
	Call sub_0806AED8
	CallWithArg sub_0806AA50, 0x00000000
	_0807EA94 
	CallWithArg sub_0806AA50, 0x00000001
	_0807EA94 
	CallWithArg sub_0806AA50, 0x00000002
	_0807EA94 
	JumpIf script_08013176
	_0807E878 
	Jump script_08013128
script_08013176:
	SetIntVariable 0x00000403
	Call sub_0807F420
	_0807E878 
	Jump script_08013128
SCRIPT_START script_08013188
	BeginBlock 
	CheckLocalFlag 0x0062
	JumpIfNot script_0801319A
	DoPostScriptAction 0x0006
	EndBlock 
SCRIPT_END
