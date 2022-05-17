@ Hyrule Town Mutoh in Kinstone cutscene
SCRIPT_START script_MutohKinstone
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Call SetPriorityMessage
	EndBlock
script_0800BADE:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BADE
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x01
	WaitUntilTextboxCloses
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
