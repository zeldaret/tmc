SCRIPT_START script_08013FE8
	StartScript 
	_0807EF80 0x0008
	StopScript 
script_08013FF0:
	StopScript 
	StartScript 
	CheckLocalFlag 0x007d
	JumpIf script_0801404C
	CheckLocalFlag 0x007a
	JumpIfNot script_08013FF0
	CheckInventory1 0x0003
	JumpIfNot script_08013FF0
	CallWithArg sub_0807F6B4, 0x000000d0
	JumpIfNot script_08013FF0
	StopScript 
	Call sub_0807F9A4
	StartScript 
	_0807E864 
	Call sub_0807DF28
	StopScript 
	_0807EB28 0x1508
	_0807EA94 
	StartPlayerScript script_08010A14
	WaitForSomething2 0x00000001
	Call sub_0807DF50
	_0807E878 
	Jump script_08013FF0
script_0801404C:
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
