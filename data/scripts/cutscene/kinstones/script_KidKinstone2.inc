@ Hyrule Town Kinstone cutscene Kid 2
SCRIPT_START script_KidKinstone2
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0002
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x000b
	EndBlock
	Call SetPriorityMessage
	WaitForSyncFlagAndClear 0x00000008
	DoPostScriptAction 0x0007
	MoveTo 0x01d8, 0x0328
	MoveTo 0x01f8, 0x0348
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	SetSyncFlag 0x00000100
script_0800F478:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_0800F490
	EndBlock
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_MINISH2, 0x38
	WaitUntilTextboxCloses
	EnablePlayerControl
script_0800F490:
	CheckSyncFlagAndClear 0x00000008
	JumpIfNot script_0800F478
	EndBlock
	DoPostScriptAction 0x000b
	Wait 0x0018
	SetEntitySpeed 0x0100
	WalkEast 0x0010
	WalkNorth 0x0020
	MoveTo 0x0288, 0x0328
	SetSyncFlag 0x00000100
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
