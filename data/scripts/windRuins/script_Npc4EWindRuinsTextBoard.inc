@ After Mazaal NPC4E text board
SCRIPT_START script_Npc4EWindRuinsTextBoard
	BeginBlock
	Call sub_0807F934
	DoPostScriptAction 0x0008
	SetIntVariable 0x00000001
	Call sub_0806DA04
	EndBlock
script_0800D88E:
	CheckEntityInteractType
	JumpIfNot script_0800D88E
	SetPlayerIdle
	Call sub_0807DF28
	CheckLocalFlag 0x0045
	JumpIf script_0800D8B0
	StartPlayerScript script_PlayerAtTextboard
	WaitForSyncFlagAndClear 0x00000001
script_0800D8B0:
	_0807E8E4_0 
	MessageNoOverlap 0x1324
	WaitUntilTextboxCloses
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
	EnablePlayerControl
	Jump script_0800D88E
	.2byte 0x0000
