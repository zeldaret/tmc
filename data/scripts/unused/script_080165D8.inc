@ TODO UNUSED?
SCRIPT_START script_080165D8
	Wait 0x001e
	CheckPlayerInRegion2 0x2020
	JumpAbsoluteIfNot script_080165D8
	DoPostScriptAction 0x0003
	Call CreateDustFromScript+1
	JumpAbsolute script_080165D8
	.2byte 0x0000
