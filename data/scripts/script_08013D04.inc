SCRIPT_START script_08013D04
	BeginBlock 
	Call sub_0807F92C
	_0807EF80 0x0008
	CallWithArg sub_0806DA04, 0x00000004
	EndBlock 
script_08013D1C:
	CheckEntityInteractType 
	JumpIfNot script_08013D1C
	CallWithArg sub_08095D54, 0x00000000
	SoundReq 0x01cd
	_0807E5F8 0x08000000
	Call sub_080791BC
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
