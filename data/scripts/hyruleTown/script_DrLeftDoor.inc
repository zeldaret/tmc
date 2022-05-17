@ Hyrule Town door closed DrLeft
SCRIPT_START script_DrLeftDoor
	BeginBlock
	DoPostScriptAction 0x0007
	CheckGlobalFlag LEFT_DOOR_OPEN
	JumpIf script_0800EF92
	EndBlock
script_0800EF50:
	Call sub_080869A4
	JumpIfNot script_0800EF50
	SetPlayerIdle
	CheckLocalFlagByBank FLAG_BANK_2, 0x006d
	JumpIf script_0800EF82
	MessageFromTarget TEXT_DR_LEFT, 0x01
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtDrLeftDoor
	WaitForSyncFlagAndClear 0x00000001
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800EF50
script_0800EF82:
	SetGlobalFlag LEFT_DOOR_OPEN
	MessageFromTarget TEXT_DR_LEFT, 0x02
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
script_0800EF92:
	Call sub_0808692C
SCRIPT_END
	.2byte 0x0000
