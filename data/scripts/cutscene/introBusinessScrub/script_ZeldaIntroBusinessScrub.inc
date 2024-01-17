@ Intro Outside Castle Zelda
SCRIPT_START script_ZeldaIntroBusinessScrub
	BeginBlock
	SetEntitySpeed 0x0180
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x000b
	Call sub_08066D04
	EndBlock
	WaitForSyncFlagAndClear 0x00000001
	BeginBlock
	Call sub_08066D14
	MoveEntityToPlayer
	EndBlock
	DoPostScriptAction 0x0007
	FacePlayer
	MoveTo 0x01f8, 0x02f8
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	MessageFromTargetPos TEXT_PROLOGUE, 0x11, 0x0002
	WaitUntilTextboxCloses
	MoveTo 0x01f8, 0x0268
	SetEntityPositionRelative 0x0248, 0x0218
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	Call sub_0807F3C8
	PlaySound SFX_VO_ZELDA3
	SetEntitySpeed 0x0200
	WalkSouth 0x0008
	SetAnimation 0x0040
	Call WaitForAnimDone
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	SetEntitySpeed 0x0100
	MoveTo 0x0238, 0x0238
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4
	SetSyncFlag 0x00000002
script_08015A32:
	EndBlock
	BeginBlock
	FacePlayer
	CheckRoomFlag 0x0000
	JumpIf script_08015A54
	CheckEntityInteractType
	JumpIfNot script_08015A32
	EndBlock
	MessageFromTargetPos TEXT_PROLOGUE, 0x67, 0x0002
	WaitUntilTextboxCloses
	Jump script_08015A32
script_08015A54:
	EndBlock
	DoPostScriptAction 0x000b
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	WaitForSyncFlagAndClear 0x00000001
	Call sub_08066D4C
	SetSyncFlag 0x00000002
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
