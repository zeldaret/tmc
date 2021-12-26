@ Hyrule Town closed door for Inn
SCRIPT_START script_InnDoor
	CheckPlayerInRegion2 0x0808
	JumpIfNot script_InnDoor
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtInnDoor
	WaitForSomething2 0x00000001
	CheckRoomFlag 0x0001
	JumpIf script_08010900
	_0807EB28 0x0b63
	WaitUntilTextboxCloses
script_08010900:
	Call sub_0807DF50
	_0807E878
	Jump script_InnDoor
