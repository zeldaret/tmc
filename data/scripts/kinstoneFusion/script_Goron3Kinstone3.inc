@ 3rd Goron during 3rd Goron cutscene
SCRIPT_START script_Goron3Kinstone3
	BeginBlock
	SetAnimationState 0x0000
	SetAnimation 0x0000
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	Call SetPriorityMessage
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	DoPostScriptAction 0x0007
	CallWithArg sub_0807F4F8, 0x000001b8
	Wait 0x001e
	MessageNoOverlap TEXT_KINSTONE, 0x0e
	WaitUntilTextboxCloses
	SetSyncFlag 0x0000000c
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x0100
	MoveTo 0x0088, 0x0178
	Wait 0x000f
	SetSyncFlag 0x0000000c
	DoPostScriptAction 0x000f
	SetAnimation 0x0008
	Wait 0x00f0
	Call sub_08054968
SCRIPT_END
