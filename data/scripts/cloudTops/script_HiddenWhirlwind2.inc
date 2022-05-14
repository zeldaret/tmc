@ Cloud Tops Whirlwind hidden in clouds
SCRIPT_START script_HiddenWhirlwind2
	BeginBlock
	CheckLocalFlag KUMOUE_02_02
	JumpIf script_0800D6E8
	DoPostScriptAction 0x0008
	EndBlock
script_0800D700:
	CheckLocalFlag KUMOUE_02_02
	JumpIfNot script_0800D700
	DoPostScriptAction 0x0007
SCRIPT_END
	.2byte 0x0000
