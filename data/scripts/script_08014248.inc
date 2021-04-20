SCRIPT_START script_08014248
	TestBit 0x00020000
	JumpIf script_08014264
	Wait 0x0008
	CallWithArg sub_08095EAC, 0x00000000
	Jump script_08014248
script_08014264:
	CallWithArg sub_08095EAC, 0x00000001
	Jump script_08014264
	.2byte 0x0000
SCRIPT_START script_08014274
	BeginBlock 
	DoPostScriptAction 0x0008
	EndBlock 
script_0801427C:
	CheckLocalFlag 0x0078
	JumpIfNot script_0801427C
	BeginBlock 
	Call sub_0807F934
	CallWithArg sub_0806DA04, 0x00000008
	EndBlock 
script_08014298:
	CheckEntityInteractType 
	JumpIfNot script_08014298
	_0807E864 
	TextboxNoOverlapFollowPos 0x0647, 0x000c
	_0807EA94 
	_0807E878 
	Jump script_08014298
	.2byte 0x0000
