@ Hyrule Town closed door for first empty house
SCRIPT_START script_FirstHouseDoor
	BeginBlock
	DoPostScriptAction 0x0007
	CheckKinstoneFused 0x001b
	JumpIf script_0800EF92
	EndBlock
script_0801091C:
	Call sub_080869A4
	JumpIfNot script_0801091C
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	CheckRoomFlag 0x0001
	JumpIf script_08010942
	_0807EB28 0x0b62
	WaitUntilTextboxCloses
script_08010942:
	StartPlayerScript script_PlayerAtInnDoor
	WaitForSyncFlagAndClear 0x00000001
	Call sub_0807DF50
	_0807E878
	Jump script_0801091C
	Call sub_0808692C
SCRIPT_END
	.2byte 0x0000
