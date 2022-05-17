@ Some Forest Minish ?
SCRIPT_START script_ForestMinish12
	BeginBlock
	_0807E9D4
	EndBlock
script_080165FE:
	FacePlayerAndCheckDist
	JumpIfNot script_080165FE
	MessageFromTarget TEXT_LOCATIONS, 0x01
	Jump script_080165FE
