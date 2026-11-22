@ Some Forest Minish ?
script_ForestMinish14::
	BeginBlock
	AddInteractableWhenBigObject
	EndBlock
script_0801662E:
	TriggerInteract
	SetPlayerIdle
	EzloMessage TEXT_LOCATIONS, 0x03
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0801662E
	.2byte 0x0000
