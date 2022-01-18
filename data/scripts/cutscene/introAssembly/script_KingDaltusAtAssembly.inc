@ Intro Assembly King Daltus
SCRIPT_START script_KingDaltusAtAssembly
	BeginBlock
	Call SetPriorityMessage
	SetEntitySpeed 0x0100
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
	WaitForSyncFlagAndClear 0x00000080
	SetAnimationState 0x0004
	WalkSouth 0x0008
	SetAnimation 0x0004
	MessageFromTargetPos 0x1050, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	SetAnimation 0x0004
	MessageFromTargetPos 0x1052, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	SetAnimationState 0x0006
	SetAnimation 0x0005
	MessageFromTargetPos 0x1054, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	SetAnimationState 0x0004
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	SetAnimation 0x0004
	MessageFromTargetPos 0x1056, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	SetAnimation 0x0004
	MessageFromTargetPos 0x1057, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	SetAnimation 0x0004
	MessageFromTargetPos 0x1058, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
	WaitForSyncFlagAndClear 0x00000080
	SetAnimation 0x0004
	MessageFromTargetPos 0x105c, 0x000e
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000100
script_0800917C:
	CheckEntityInteractType
	JumpIfNot script_0800917C
	SetPlayerIdle
	FacePlayer
	Call sub_0806673C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800917C
