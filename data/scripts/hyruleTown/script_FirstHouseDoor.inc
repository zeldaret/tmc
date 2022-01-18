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
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	CheckRoomFlag 0x0001
	JumpIf script_08010942
	EzloMessage 0x0b62
	WaitUntilTextboxCloses
script_08010942:
	StartPlayerScript script_PlayerAtInnDoor
	WaitForSyncFlagAndClear 0x00000001
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_0801091C
	Call sub_0808692C
SCRIPT_END
	.2byte 0x0000
