@ Hyrule Town Kinstone cutscene Kid 3
SCRIPT_START script_KidKinstone3
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0002
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x0008
	SetEntitySpeed 0x0080
	DoPostScriptAction 0x000b
	EndBlock
	Call SetPriorityMessage
	WaitForSyncFlagAndClear 0x00000010
	DoPostScriptAction 0x0007
	MoveTo 0x01c8, 0x0328
	MoveTo 0x01e8, 0x0338
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	SetSyncFlag 0x00000200
script_0800F50C:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_0800F524
	EndBlock
	SetPlayerIdle
	FacePlayer
	MessageNoOverlap TEXT_MINISH2, 0x39
	WaitUntilTextboxCloses
	EnablePlayerControl
script_0800F524:
	CheckSyncFlagAndClear 0x00000010
	JumpIfNot script_0800F50C
	EndBlock
	DoPostScriptAction 0x000b
	Wait 0x0028
	SetEntitySpeed 0x0100
	WalkNorth 0x0010
	MoveTo 0x0288, 0x0328
	SetSyncFlag 0x00000200
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
