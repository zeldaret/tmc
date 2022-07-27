@ Some Forest Minish?
SCRIPT_START script_ForestMinish13
	BeginBlock
	_0807E9D4
	EndBlock
script_08016612:
	TriggerInteract
	SetPlayerIdle
	MessageFromTarget TEXT_LOCATIONS, 0x02
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_08016612
	.2byte 0x0000
