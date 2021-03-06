SCRIPT_START script_08009E88
	BeginBlock 
	Call sub_0807DF28
	_0807E864 
	SetLocalFlag 0x009f
	EndBlock 
	Wait 0x003c
	_0807E778 0x0004
	DoFade4 
	WaitFor_2 
script_08009EA4:
	Call sub_0807F0D8
	JumpIfNot script_08009EA4
	_0807EF80 0x0014
	Wait 0x000a
	Call sub_08053250
	_0807E878 
	Call sub_0807DF50
	Call sub_080791D0
SCRIPT_END
