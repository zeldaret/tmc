SCRIPT_START script_080095F2
script_080095F2:
	CheckEntityInteractType 
	JumpIfNot script_080095DE
	_0807E864 
	_0807EB74 
	_0807EF80 0x0001
	Call sub_0806BE84
	_0807EA94 
	JumpIfNot script_08009622
	SoundReq 0x0109
	_0807F088 0x003c
	TextboxNoOverlapFollow 0x053c
	WaitPlayerAction8 
	_0807EA94 
	_0807F078 0x003c, 0x0001
script_08009622:
	_0807E878 
	_0807EF80 0x0000
	Jump script_080095DE
	StartScript 
	_0807EF80 0x000b
	_0807EF80 0x0008
	StopScript 
script_08009638:
	StopScript 
	StartScript 
	CheckGlobalFlag 0x0020
	JumpIfNot script_08009638
	StopScript 
script_08009646:
	Call sub_0806BF44
	JumpIf script_08009646
	StopScript 
	Call sub_0806BE3C
	_0807EF80 0x000a
	_0807EF80 0x0007
script_08009660:
	CheckEntityInteractType 
	JumpIfNot script_08009660
	_0807E864 
	_0807EB74 
	_0807EF80 0x0001
	Call sub_0806BEC8
	_0807EA94 
	JumpIfNot script_0800968E
	SoundReq 0x0111
	SoundReq 0x0072
	_0807F078 0x003c, 0x0002
	Call sub_0806BEFC
script_0800968E:
	_0807E878 
	_0807EF80 0x0000
	Jump script_08009660
	StartScript 
	_0807EF80 0x0007
	Jump script_080096FC
	CheckGlobalFlag 0x0020
	JumpIf script_080096FC
	StopScript 
script_080096AC:
	CheckPlayerInRegion 0x0188, 0x01c0, 0x1020
	JumpIfNot script_080096AC
	_0807E864 
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_08009704
	WaitForSomething2 0x00000001
	SoundReq 0x0111
	_0807EF80 0x0008
	LoadRoomEntityList gUnk_080D9048
	Wait 0x000f
	SoundReq 0x0111
	_0807EF80 0x0007
script_080096EC:
	CheckGlobalFlag 0x0020
	JumpIfNot script_080096EC
	Call sub_0807DF50
	_0807E878 
script_080096FC:
	Call sub_0808692C
SCRIPT_END
