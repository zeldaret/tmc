SCRIPT_START script_08013D04
	BeginBlock 
	Call sub_0807F92C
	DoPostScriptAction 0x0008
	CallWithArg sub_0806DA04, 0x00000004
	EndBlock 
script_08013D1C:
	CheckEntityInteractType 
	JumpIfNot script_08013D1C
	CallWithArg sub_08095D54, 0x00000000
	PlaySound SFX_ELEMENT_PLACE
	_0807E5F8 0x08000000
	Call sub_080791BC
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
