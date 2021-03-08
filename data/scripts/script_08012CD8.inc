SCRIPT_START script_08012CD8
	EndBlock 
	BeginBlock 
	_0807E564 
	JumpIfNot script_08012CD8
	CheckPlayerInRegion 0x0380, 0x03b0, 0x4040
	JumpIfNot script_08012CD8
	ComparePlayerAction 0x0015
	JumpIf script_08012CD8
	_0807E864 
	Call sub_0807DF28
	EndBlock 
	_0807EB28 0x2203
	_0807EA94 
	SetLocalFlag 0x003e
	Call sub_0807DF50
	_0807E878 
	DoPostScriptAction 0x0006
SCRIPT_END
