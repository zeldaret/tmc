@ Veil Falls Talk to BigGoron
SCRIPT_START script_BigGoronTalk
	CheckLocalFlag DAIGORON_EXCHG
	JumpIf script_0800943E
	CheckInventory1 ITEM_SHIELD
	JumpIf script_080093BC
	CheckInventory1 ITEM_MIRROR_SHIELD
	JumpIf script_080093BC
	MessageNoOverlap TEXT_GORONS, 0x02
	WaitUntilTextboxCloses
	Jump script_08009376
script_080093BC:
	CheckInventory1 ITEM_MIRROR_SHIELD
	JumpIfNot script_080093DA
	Call sub_0806D788
	MessageNoOverlap TEXT_GORONS, 0x03
	WaitUntilTextboxCloses
	Call sub_0806D70C
	Jump script_08009376
script_080093DA:
	SetIntVariable 0x00001d05
	CheckLocalFlag DAIGORON_SHIELD
	JumpIf script_080093EE
	SetIntVariable 0x00001d04
script_080093EE:
	MessageNoOverlapVar
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_08009376
	Wait 0x001e
	MessageNoOverlap TEXT_GORONS, 0x08
	WaitUntilTextboxCloses
	LoadRoomEntityList gUnk_080F9C38
	Wait 0x0078
	Call sub_0806D6D0
	Wait 0x00b4
	Call sub_0806D70C
	Wait 0x0078
	SetLocalFlag DAIGORON_EXCHG
	SetLocalFlag DAIGORON_SHIELD
	Call sub_0806D5D4
	FaceAwayFromPlayer
	MessageNoOverlap TEXT_GORONS, 0x09
	WaitUntilTextboxCloses
	Wait 0x000a
	Jump script_08009376
script_0800943E:
	Call sub_0806D600
	JumpIf script_08009452
	MessageNoOverlap TEXT_GORONS, 0x0a
	WaitUntilTextboxCloses
	JumpIfNot script_08009376
script_08009452:
	MessageNoOverlap TEXT_GORONS, 0x0b
	WaitUntilTextboxCloses
	Call sub_0806D74C
	_0807F0C8 0xffff, 0x0000
