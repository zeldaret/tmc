SCRIPT_START script_08013F94
	StartScript 
	_0807EF80 0x0008
	StopScript 
	CheckLocalFlag 0x007d
	JumpIf script_08013FE0
script_08013FA4:
	StopScript 
	StartScript 
	CheckInventory1 0x0003
	JumpIfNot script_08013FA4
	CheckPlayerFlags 0x00400000
	JumpIfNot script_08013FA4
	StopScript 
	Call sub_0807FA40
	_0807E888 
	Call sub_0807DF38
	Wait 0x0078
	_0807EB28 0x1505
	_0807EA94 
	SetLocalFlag 0x007d
	Call sub_0807DF50
	_0807E878 
script_08013FE0:
	_0807EF80 0x0006
SCRIPT_END
	.short 0x0000
