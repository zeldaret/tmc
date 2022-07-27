@ Simon
SCRIPT_START script_Simon
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
	CheckGlobalFlag MAROYA_WAKEUP
	JumpIfNot script_08011B84
	WaitForSyncFlagAndClear 0x00000004
	SetAnimationState 0x0006
	DoPostScriptAction 0x0004
	Wait 0x003c
	FaceAwayFromPlayer
	MessageNoOverlap TEXT_SIMON, 0x07
	WaitUntilTextboxCloses
	SetAnimationState 0x0004
	ClearGlobalFlag MAROYA_WAKEUP
	Call EnablePauseMenu
	EnablePlayerControl
script_08011B84:
	CheckEntityInteractType
	JumpIfNot script_08011B84
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_SIMON, 0x01
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_08011BA4
script_08011B9A:
	EnablePlayerControl
	SetAnimationState 0x0004
	Jump script_08011B84
script_08011BA4:
	HasRupees 10
	JumpIf script_08011BBC
	DoPostScriptAction 0x0004
	Wait 0x003c
	MessageNoOverlap TEXT_SIMON, 0x05
	Jump script_08011B9A
script_08011BBC:
	ModRupees -10
	Wait 0x001e
	MessageNoOverlap TEXT_SIMON, 0x06
	WaitUntilTextboxCloses
	CallWithArg sub_0806C2A0, 0x00000000
	WaitForFadeFinish
	Wait 0x003c
	Call sub_0806C224
	Jump script_08011B9A
