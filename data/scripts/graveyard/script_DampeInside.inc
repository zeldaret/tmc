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
	InitItemGetSequence 0x003c
	MessageFromTarget 0x053c
	WaitPlayerGetItem 
	WaitUntilTextboxCloses
	SetInventoryValue 0x003c, 0x0001
script_08009622:
	EnablePlayerControl
	DoPostScriptAction 0x0000
	Jump script_080095DE
