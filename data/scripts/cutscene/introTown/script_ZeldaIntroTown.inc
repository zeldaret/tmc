@ Intro Hyrule Town Zelda
SCRIPT_START script_ZeldaIntroTown
	BeginBlock
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x000b
	SetEntitySpeed 0x0080
	Call sub_08066D04
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	Call sub_08066D14
	JumpIf script_0800FB6C
	MoveEntityToPlayer
script_0800FB6C:
	DoPostScriptAction 0x0007
	SetEntityPositionRelative 0x00b8, 0x0398
	SetAnimationState 0x0002
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x0200
	MoveTo 0x00b8, 0x0318
	SetEntityPositionRelative 0x00a0, 0x0260
	SetAnimationState 0x0000
	DoPostScriptAction 0x0001
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x000a
	_0807E9D4
script_0800FBAE:
	FacePlayerAndCheckDist
	JumpIfNot script_0800FBAE
	DoPostScriptAction 0x000b
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x0200
	MoveTo 0x00a0, 0x0268
	MoveTo 0x0070, 0x0268
	MoveTo 0x0070, 0x0208
	SetEntityPositionRelative 0x0078, 0x01a8
	SetAnimationState 0x0000
	DoPostScriptAction 0x0001
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x000a
script_0800FC06:
	FacePlayerAndCheckDist
	JumpIfNot script_0800FC06
	DoPostScriptAction 0x000b
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x0200
	MoveTo 0x00f8, 0x01a8
	SetEntityPositionRelative 0x0118, 0x01c8
	SetAnimationState 0x0002
	DoPostScriptAction 0x0001
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x000a
script_0800FC52:
	FacePlayerAndCheckDist
	JumpIfNot script_0800FC52
	DoPostScriptAction 0x000b
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	SetEntitySpeed 0x0200
	MoveTo 0x0118, 0x0260
	SetEntityPositionRelative 0x00f8, 0x0270
	SetAnimationState 0x0000
	DoPostScriptAction 0x0001
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x000a
script_0800FC9E:
	@ Wait at Pina for Link
	CheckEntityInteractType
	JumpIfNot script_0800FC9E
	DoPostScriptAction 0x000b
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	DoPostScriptAction 0x0004
	WaitForSyncFlagAndClear 0x00000002
	DoPostScriptAction 0x000d
	SetEntitySpeed 0x0040
	WalkEast 0x0020
	SetAnimationState 0x0000
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	DoPostScriptAction 0x000c
	SetEntitySpeed 0x0040
	WalkWest 0x0020
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000002
	Call sub_08066D4C
	DoPostScriptAction 0x0006
SCRIPT_END
