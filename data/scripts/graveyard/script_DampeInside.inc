@ Graveyard Dampe in house
SCRIPT_START script_DampeInside
	CheckEntityInteractType
	JumpIfNot script_080095DE
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0001
	Call sub_0806BE84
	WaitUntilTextboxCloses
	JumpIfNot script_08009622
	PlaySound SFX_ITEM_GET
	InitItemGetSequence ITEM_QST_GRAVEYARD_KEY
	MessageFromTarget TEXT_ITEM_GET, 0x3c
	WaitPlayerGetItem 
	WaitUntilTextboxCloses
	SetInventoryValue ITEM_QST_GRAVEYARD_KEY, 0x0001
script_08009622:
	EnablePlayerControl
	DoPostScriptAction 0x0000
	Jump script_080095DE
