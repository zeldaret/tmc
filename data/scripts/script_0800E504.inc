SCRIPT_START script_0800E504
	BeginBlock 
	EndBlock 
	CheckLocalFlag 0x007d
	JumpIf script_0800E53C
script_0800E510:
	CheckPlayerInRegion 0x00a8, 0x0178, 0x1080
	JumpIfNot script_0800E510
	_0807E864 
	Wait 0x001e
	Call sub_0807F3F8
	Wait 0x003c
	SoundReq 0x0105
	Wait 0x001e
	_0807EB28 0x1617
	SetLocalFlag 0x007d
script_0800E53C:
	_0807E878 
	_0807EF80 0x0006
SCRIPT_END
