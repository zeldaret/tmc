SCRIPT_START script_08013B18
	BeginBlock 
	_0807EF80 0x0008
script_08013B1E:
	EndBlock 
	BeginBlock 
	CallWithArg sub_0807F6B4, 0x000001c8
	JumpIfNot script_08013B1E
	CheckInventory1 0x0006
	JumpIfNot script_08013B1E
	CheckLocalFlag 0x0078
	JumpIf script_08013B1E
	EndBlock 
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807EB28 0x1507
	_0807EA94 
	StartPlayerScript script_08010A14
	WaitForSomething2 0x00000001
	Call sub_0807DF50
	_0807E878 
	Jump script_08013B1E
	.short 0x0000
