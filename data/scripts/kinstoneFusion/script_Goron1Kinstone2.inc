@ 1st Goron during Kinstone cutscene for 2nd Goron
SCRIPT_START script_Goron1Kinstone2
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0008
	Call SetPriorityMessage
	EndBlock
	WaitForFadeFinish
	Wait 0x00f0
	SetAnimation 0x0000
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x0a
	WaitUntilTextboxCloses
	SetAnimation 0x0008
	Wait 0x003c
	SetSyncFlag 0x00000001
script_0800BD1C:
	CheckRoomFlag 0x00ff
	JumpIfNot script_0800BD1C
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	SetAnimation 0x0000
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x0c
	WaitUntilTextboxCloses
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x000f
	SetAnimation 0x0008
	Wait 0x0168
	SetAnimation 0x0000
	Wait 0x003c
	SetAnimationState 0x0002
	WaitForSyncFlagAndClear 0x00000004
	SetEntitySpeed 0x0080
	MoveToOffset 0x0000, -32
SCRIPT_END
