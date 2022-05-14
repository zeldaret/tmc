@ Bomb Forest Minish during Kinstone cutscene
SCRIPT_START script_BombMinishKinstone
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Call SetPriorityMessage
	EndBlock
script_0800BB42:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BB42
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x05
	WaitUntilTextboxCloses
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
