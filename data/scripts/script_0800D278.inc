SCRIPT_START script_0800D278
	StartScript 
	_0807E9D4 
	_0807EF80 0x000a
	StopScript 
script_0800D282:
	CheckInventory1 0x0041
	JumpIf script_0800D292
	CheckLocalFlag 0x007e
	JumpIf script_0800D2EA
script_0800D292:
	StartScript 
	TestBit 0x00000001
	JumpIf script_0800D2C6
	CheckEntityInteractType 
	JumpIf script_0800D2B0
	Call sub_0806811C
	StopScript 
	Jump script_0800D282
script_0800D2B0:
	StopScript 
	_0807E864 
	Call sub_08068190
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800D282
script_0800D2C6:
	StopScript 
	_0807E5F8 0x00000004
	WaitForSomething2 0x00000002
	_0807E5F8 0x00000004
	_0807E930 0x000c
	WaitForSomething2 0x00000001
	_0807E5F8 0x00000004
script_0800D2EA:
	_0807E930 0x000b
script_0800D2EE:
	CheckEntityInteractType 
	JumpIfNot script_0800D2EE
	_0807E864 
	Call sub_08068190
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800D2EE
	StartScript 
	Call sub_08068884
	_0807EF80 0x000a
	_0807EB44 0x0004
	_0807E930 0x0000
	StopScript 
script_0800D31E:
	StopScript 
	StartScript 
	Call sub_08068910
	CheckEntityInteractType 
	JumpIfNot script_0800D31E
	StopScript 
	_0807E864 
	_0807EB74 
	_0807E914 0x00000000
	Call sub_0806C028
	TextboxNoOverlapFollow 0x1219
	_0807EA94 
	Wait 0x000f
	_0807E878 
	Jump script_0800D31E
	StartScript 
	Call sub_08068104
	_0807EF80 0x000a
	StopScript 
script_0800D35E:
	StartScript 
	CheckEntityInteractType 
	JumpIf script_0800D372
	Call sub_0806811C
	StopScript 
	Jump script_0800D35E
script_0800D372:
	StopScript 
	_0807E864 
	Call sub_08068190
	_0807EA94 
	Wait 0x000f
	CheckLocalFlag 0x007f
	JumpIf script_0800D3E4
	CheckLocalFlag 0x007e
	JumpIfNot script_0800D3E4
	_0807EF80 0x000b
	SetEntityNonPlanarMovement 0x0100
	CheckPlayerInRegion 0x0090, 0x0130, 0x0810
	JumpIfNot script_0800D3B2
	StartPlayerScript script_0800D3EC
	WaitForSomething2 0x00000001
script_0800D3B2:
	_0807EB44 0x0002
	_0807E930 0x0005
	_0807EDD4 0x00a0, 0x0130
	_0807EB44 0x0006
	_0807E930 0x0003
	_0807E914 0x00000004
	Call sub_080681D8
	SoundReq 0x00cd
	Wait 0x001e
	_0807EF80 0x000a
	SetLocalFlag 0x007f
script_0800D3E4:
	_0807E878 
	Jump script_0800D35E
	.short 0x0000
