SCRIPT_START script_0800E544
	BeginBlock 
	EndBlock 
	CheckLocalFlag 0x007e
	JumpIf script_0800E582
script_0800E550:
	CheckPlayerInRegion 0x00a8, 0x00c0, 0x0880
	JumpIfNot script_0800E550
	_0807E864 
	Wait 0x001e
	Call sub_0807F3F8
	Wait 0x003c
	PlaySound SFX_105
	Wait 0x001e
	_0807EB28 0x1622
	Call sub_08053494
	SetLocalFlag 0x007e
script_0800E582:
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
