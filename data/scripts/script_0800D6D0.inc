SCRIPT_START script_0800D6D0
	BeginBlock 
	CheckLocalFlag 0x00f3
	JumpIf script_0800D6E8
	DoPostScriptAction 0x0008
	EndBlock 
script_0800D6E0:
	CheckLocalFlag 0x00f3
	JumpIfNot script_0800D6E0
script_0800D6E8:
	DoPostScriptAction 0x0007
SCRIPT_END
	.short 0x0000
