SCRIPT_START script_08012D18
	EndBlock 
	BeginBlock 
	CheckGlobalFlag 0x0014
	JumpIfNot script_08012D18
	CheckLocalFlagByOffset 0x0200, 0x008d
	JumpIf script_08012D68
	CheckPlayerInRegion 0x0000, 0x01a8, 0x2010
	JumpIfNot script_08012D18
	EndBlock 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807EB28 0x111a
	_0807EA94 
	StartPlayerScript script_08010A38
	WaitForSomething2 0x00000001
	Call sub_0807DF50
	_0807E878 
	Jump script_08012D18
script_08012D68:
	DoPostScriptAction 0x0006
SCRIPT_END
	.short 0x0000
