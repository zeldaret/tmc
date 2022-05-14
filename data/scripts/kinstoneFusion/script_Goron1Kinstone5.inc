@ 1st Goron during 5th Goron cutscene
SCRIPT_START script_Goron1Kinstone5
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0008
	Call SetPriorityMessage
	EndBlock
	WaitForFadeFinish
	Wait 0x00f0
	SetAnimation 0x0000
	SetAnimationState 0x0002
	Wait 0x003c
	MessageNoOverlap TEXT_KINSTONE, 0x13
	WaitUntilTextboxCloses
	SetAnimation 0x0008
	Wait 0x003c
	Jump script_0800C11C
	.2byte 0x0000
