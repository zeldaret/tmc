@ Hyrule Town closed door for first empty house
SCRIPT_START script_FirstHouseDoor
	BeginBlock
	DoPostScriptAction 0x0007
	CheckKinstoneFused KINSTONE_1B
	JumpIf script_0800EF92
	EndBlock
script_0801091C:
	Call sub_080869A4
	JumpIfNot script_0801091C
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	CheckRoomFlag 0x0001
	JumpIf script_08010942
	EzloMessage TEXT_EZLO, 0x62
	WaitUntilTextboxCloses
script_08010942:
	StartPlayerScript script_PlayerAtInnDoor
	WaitForSyncFlagAndClear 0x00000001
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0801091C
	Call sub_0808692C
SCRIPT_END
	.2byte 0x0000
