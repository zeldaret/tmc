@ Hyrule Town Kinstone cutscene Kid 1
SCRIPT_START script_KidKinstone1
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0002
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x000b
	EndBlock
	Call SetPriorityMessage
	WaitForSyncFlagAndClear 0x00000004
	DoPostScriptAction 0x0007
	MoveTo 0x01f8, 0x0318
	MoveTo 0x0208, 0x0318
	MoveTo 0x0208, 0x0338
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	SetSyncFlag 0x00000080
script_0800F3EA:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_0800F402
	EndBlock
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_MINISH2, 0x37
	WaitUntilTextboxCloses
	EnablePlayerControl
script_0800F402:
	CheckSyncFlagAndClear 0x00000004
	JumpIfNot script_0800F3EA
	EndBlock
	DoPostScriptAction 0x000b
	Wait 0x0010
	SetEntitySpeed 0x0100
	WalkNorth 0x0010
	MoveTo 0x0288, 0x0328
	SetSyncFlag 0x00000080
	DoPostScriptAction 0x0006
SCRIPT_END
