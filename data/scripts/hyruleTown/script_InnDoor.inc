@ Hyrule Town closed door for Inn
SCRIPT_START script_InnDoor
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_InnDoor
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerAtInnDoor
	WaitForSyncFlagAndClear 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_08010900
	EzloMessage TEXT_EZLO, 0x63
	WaitUntilTextboxCloses
script_08010900:
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_InnDoor
