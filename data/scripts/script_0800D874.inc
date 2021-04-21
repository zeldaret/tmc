SCRIPT_START script_0800D874
	BeginBlock 
	Call sub_0807F934
	DoPostScriptAction 0x0008
	SetIntVariable 0x00000001
	Call sub_0806DA04
	EndBlock 
script_0800D88E:
	CheckEntityInteractType 
	JumpIfNot script_0800D88E
	_0807E864 
	Call sub_0807DF28
	CheckLocalFlag 0x0045
	JumpIf script_0800D8B0
	StartPlayerScript script_0800D92C
	WaitForSomething2 0x00000001
script_0800D8B0:
	_0807E8E4_0 
	TextboxNoOverlap 0x1324
	_0807EA94 
	CheckInventory1 0x0017
	JumpIf script_0800D8D6
	CheckLocalFlag 0x0045
	JumpIf script_0800D8D6
	LoadRoomEntityList gUnk_080E3830
script_0800D8CE:
	CheckLocalFlag 0x0045
	JumpIfNot script_0800D8CE
script_0800D8D6:
	Call sub_0807DF50
	_0807E878 
	Jump script_0800D88E
	.2byte 0x0000
SCRIPT_START script_0800D8E4
	BeginBlock 
	DoPostScriptAction 0x0008
	CheckInventory1 0x0017
	JumpIf script_0800D924
	EndBlock 
script_0800D8F4:
	CheckInventory1 0x0017
	JumpIfNot script_0800D8F4
	Call sub_0807DF28
	_0807E864 
	WaitPlayerAction8 
	_0807EB28 0x1325
	_0807EA94 
	PlaySound SFX_113
	SetIntVariable 0x00000000
	Call sub_0806DA1C
	_0807E878 
	Call sub_0807DF50
script_0800D924:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
