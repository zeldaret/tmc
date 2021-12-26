@ Hyrule Castle Minister Potho
SCRIPT_START script_MinisterPotho
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
script_0800927E:
	Call sub_080668F0
	DoPostScriptAction 0x000a
	EndBlock
script_0800928A:
	CheckEntityInteractType
	JumpIfNot script_0800928A
	_0807E864
	_0807EB74
	Call sub_08066904
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800928A
	.2byte 0x0000
