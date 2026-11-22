@ Some Forest Minish ?
script_ForestMinish12::
	BeginBlock
	AddInteractableWhenBigObject
	EndBlock
script_080165FE:
	FacePlayerAndCheckDist
	JumpIfNot script_080165FE
	MessageFromTarget TEXT_LOCATIONS, 0x01
	Jump script_080165FE
