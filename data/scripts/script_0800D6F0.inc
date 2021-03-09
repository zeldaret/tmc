SCRIPT_START script_0800D6F0
	BeginBlock 
	CheckLocalFlag 0x00f5
	JumpIf script_0800D6E8
	DoPostScriptAction 0x0008
	EndBlock 
script_0800D700:
	CheckLocalFlag 0x00f5
	JumpIfNot script_0800D700
	DoPostScriptAction 0x0007
SCRIPT_END
	.short 0x0000
