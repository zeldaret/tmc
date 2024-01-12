@ Intro Smith 1
SCRIPT_START script_SmithIntro
	BeginBlock
	Call SetPriorityMessage
	SetEntitySpeed 0x0040
	SetAnimationState 0x0004
	SetAnimation 0x000c
	SetAction 0x0003
	EndBlock
	Wait 0x001e
	CameraTargetEntity
	SetFadeTime 0x0004
	_0807E800 0x00000000
	WaitForFadeFinish
	WaitForSyncFlagAndClear 0x00000008
	DoPostScriptAction 0x0004
	Wait 0x001e
	SetAnimation 0x000b
	Wait 0x001e
	MessageFromTarget TEXT_PROLOGUE, 0x02
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000008
	SetAction 0x0001
	SetAnimationState 0x0004
	MoveTo 0x00b8, 0x005c
	SetAnimationState 0x0006
	DoPostScriptAction 0x0001
	MessageFromTarget TEXT_PROLOGUE, 0x04
	WaitUntilTextboxCloses
	DoPostScriptAction 0x0000
	Wait 0x001e
	SetFadeTime 0x0002
	SetFade5
	WaitForFadeFinish
	Call sub_08053634
SCRIPT_END
