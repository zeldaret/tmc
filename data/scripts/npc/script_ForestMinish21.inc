@ Some Forest Minish ?
script_ForestMinish21::
	BeginBlock
	AddInteractableWhenBigObject
	EndBlock
script_080168E6:
	TriggerInteract
	SetPlayerIdle
	Wait 0x000f
	EnablePlayerControl
	Jump script_080168E6
