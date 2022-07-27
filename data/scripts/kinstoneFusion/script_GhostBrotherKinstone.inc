@ Ghost Brother in Kinstone cutscene
SCRIPT_START script_GhostBrotherKinstone
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_0800BC18:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BC18
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x07
	WaitUntilTextboxCloses
	BeginBlock
	SetAnimationState 0x0000
	SetAnimation 0x0004
	EndBlock
	Wait 0x003c
	Call sub_08065CCC
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
