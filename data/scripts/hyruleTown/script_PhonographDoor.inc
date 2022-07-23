@ Hyrule Town locked door NPC4E for music room
SCRIPT_START script_PhonographDoor
	BeginBlock
	EndBlock
	CheckLocalFlag SHOP05_OPEN
	JumpIf script_080109EA
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_PhonographDoor
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerCannotEnter
	WaitForSyncFlagAndClear 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_080109DE
	EzloMessage TEXT_EZLO, 0x64
	WaitUntilTextboxCloses
script_080109DE:
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_PhonographDoor
script_080109EA:
	DoPostScriptAction 0x0006
SCRIPT_END
