@ Sanctuary OBJECT_6A Sword charging 4?
SCRIPT_START script_Object6ASwordCharge9
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E930 0x0014
	Call sub_0807F714
	CallWithArg sub_0807F994, 0x0000fffc
	EndBlock
	WaitForSomething 0x00000020
	Wait 0x0078
	Call sub_0807F2D4
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
