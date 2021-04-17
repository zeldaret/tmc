SCRIPT_START script_08012E88
	BeginBlock 
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	Call sub_0806B60C
	EndBlock 
script_08012E9E:
	CheckEntityInteractType 
	JumpIfNot script_08012E9E
	_0807E864 
	_0807EB74 
	DoPostScriptAction 0x0001
	Call sub_0806B4F0
	_0807EA94 
	_0807E878 
	DoPostScriptAction 0x0000
	Jump script_08012E9E
	.2byte 0x0000
SCRIPT_START script_08012EC0
	BeginBlock 
	_0807EB44 0x0004
	CallWithArg sub_0807F3D8, 0x00000008
	DoPostScriptAction 0x000a
	Call sub_0806B60C
	EndBlock 
script_08012EDC:
	CheckEntityInteractType 
	JumpIfNot script_08012EDC
	_0807E864 
	_0807EB74 
	CallWithArg sub_0807F3D8, 0x0000000c
	Call sub_0806B4F0
	_0807EA94 
	Wait 0x000f
	_0807E878 
	CallWithArg sub_0807F3D8, 0x00000008
	Jump script_08012EDC
