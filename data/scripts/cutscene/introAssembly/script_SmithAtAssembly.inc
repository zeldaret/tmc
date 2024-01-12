@ Intro Assembly Smith
SCRIPT_START script_SmithAtAssembly
	BeginBlock
	Call SetPriorityMessage
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	FacePlayer
	DoPostScriptAction 0x0001
	MessageFromTargetPos TEXT_PROLOGUE, 0x5b, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	DoPostScriptAction 0x0005
	Wait 0x003c
	DoPostScriptAction 0x0001
	MessageFromTargetPos TEXT_PROLOGUE, 0x51, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	DoPostScriptAction 0x0004
	Wait 0x003c
	FacePlayer
	FaceAwayFromPlayer
	DoPostScriptAction 0x0001
	MessageFromTargetPos TEXT_PROLOGUE, 0x55, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	FacePlayer
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x0001
	MoveTo 0x0098, 0x0078
	FacePlayer
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0001
	MessageFromTargetPos TEXT_PROLOGUE, 0x59, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	Jump script_080092B2
	.2byte 0x0000
