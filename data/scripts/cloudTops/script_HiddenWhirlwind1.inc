@ Cloud Tops Whirlwind hidden in clouds
SCRIPT_START script_HiddenWhirlwind1
	BeginBlock
	CheckLocalFlag KUMOUE_02_00
	JumpIf script_0800D6E8
	DoPostScriptAction 0x0008
	EndBlock
script_0800D6E0:
	CheckLocalFlag KUMOUE_02_00
	JumpIfNot script_0800D6E0
script_0800D6E8:
	DoPostScriptAction 0x0007
SCRIPT_END
	.2byte 0x0000
