@ Some Forest Minish ?
SCRIPT_START script_ForestMinish14
	BeginBlock
	_0807E9D4
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
