@ Hyrule Town Stamp in Kinstone Cutscene
SCRIPT_START script_StampKinstone
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	Call SetPriorityMessage
	EndBlock
script_0800BBBA:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BBBA
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x04
	WaitUntilTextboxCloses
	Wait 0x0078
	Call sub_08054968
SCRIPT_END
