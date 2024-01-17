@ Intro Zelda at Smith 2
SCRIPT_START script_ZeldaTalkToSmith
	BeginBlock
	SetAnimationState 0x0002
	SetEntitySpeed 0x0100
	Call SetPriorityMessage
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0004
	FacePlayer
	WaitForSyncFlagAndClear 0x00000004
	FacePlayer
	WaitForSyncFlagAndClear 0x00000004
	FacePlayer
	FaceAwayFromPlayer
	DoPostScriptAction 0x0001
	MessageFromTargetPos TEXT_PROLOGUE, 0x0a, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	FaceAwayFromPlayer
	DoPostScriptAction 0x0001
	FaceAwayFromPlayer
	SetAnimationState 0x0002
	MessageFromTargetPos TEXT_PROLOGUE, 0x0d, 0x0000
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	@ Leave room
	MoveTo 0x0028, 0x0060
	MoveTo 0x0000, 0x0060
	Call sub_080536A8
	Wait 0x001e
	BeginBlock
	SetGlobalFlag START
	Call EnablePauseMenu
	Call ResetPlayerAnimationAndAction
	EnablePlayerControl
	EndBlock
SCRIPT_END
	.2byte 0x0000
