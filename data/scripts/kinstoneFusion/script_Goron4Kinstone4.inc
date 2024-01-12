@ 4th Goron during 4th Goron cutscene
SCRIPT_START script_Goron4Kinstone4
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
	MessageNoOverlap TEXT_KINSTONE, 0x11
	WaitUntilTextboxCloses
	SetSyncFlag 0x0000001c
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x0100
	MoveTo 0x0088, 0x0188
	MoveTo 0x00a8, 0x0188
	MoveTo 0x00a8, 0x0178
	Wait 0x000f
	SetSyncFlag 0x0000001c
	DoPostScriptAction 0x000f
	SetAnimation 0x0008
	Wait 0x00b4
	CallWithArg sub_0804BF38, 0x00000001
	Wait 0x00b4
	CallWithArg sub_0804BF38, 0x00000004
	SetAnimationState 0x0004
	SetAnimation 0x0000
	Wait 0x003c
	SetSyncFlag 0x0000001c
	SetEntitySpeed 0x0080
	MoveToOffset 0x0000, -32
	Call sub_08054968
SCRIPT_END
