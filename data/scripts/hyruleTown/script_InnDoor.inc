@ Hyrule Town closed door for Inn
SCRIPT_START script_InnDoor
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_InnDoor
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtInnDoor
	WaitForSyncFlagAndClear 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_08010900
	EzloMessage 0x0b63
	WaitUntilTextboxCloses
script_08010900:
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_InnDoor
