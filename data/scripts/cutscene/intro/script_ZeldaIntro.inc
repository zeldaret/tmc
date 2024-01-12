@ Intro Zelda at Smith
SCRIPT_START script_ZeldaIntro
	BeginBlock
	Call SetPriorityMessage
	SetEntitySpeed 0x00c0
	SetAnimationState 0x0002
	DoPostScriptAction 0x0008
	EndBlock
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0007
	MoveTo 0x0068, 0x0060
	Wait 0x000f
	MessageFromTarget TEXT_PROLOGUE, 0x01
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0001
	MessageFromTarget TEXT_PROLOGUE, 0x03
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000008
SCRIPT_END
	.2byte 0x0000
