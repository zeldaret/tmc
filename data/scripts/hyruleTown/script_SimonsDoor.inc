@ Hyrule Town locked door NPC4E for Simons Simulations
SCRIPT_START script_SimonsDoor
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_SimonsDoor
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerCannotEnter
	WaitForSyncFlagAndClear 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_08010994
	EzloMessage TEXT_EZLO, 0x63
	WaitUntilTextboxCloses
script_08010994:
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_SimonsDoor


