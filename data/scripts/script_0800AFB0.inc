SCRIPT_START script_0800AFB0
	_0807E864 
script_0800AFB2:
	EndBlock 
	BeginBlock 
	Call sub_0807FBB4
	ComparePlayerAction 0x0001
	JumpIfNot script_0800AFB2
	EndBlock 
	Call sub_0807DF28
	_0807EB28 0x1c04
	_0807EA94 
	SetLocalFlagByOffset 0x0100, 0x0004
	Call sub_0807DF50
	_0807E878 
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
