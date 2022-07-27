@ Carlov in Chest room
SCRIPT_START script_CarlovGame
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0000
	DoPostScriptAction 0x000a
	EndBlock
	SetPlayerIdle
	Call DisablePauseMenu
	Wait 0x0010
	CheckLocalFlag 0x0093
	JumpIf script_080148B6
	MessageFromTargetPos 0x4215, 0x000c
	EnablePlayerControl
script_0801482E:
	CheckSyncFlagAndClear 0x00000001
	JumpIf script_08014862
	CheckSyncFlagAndClear 0x00000004
	JumpIf script_08014878
	FacePlayerAndCheckDist
	JumpIfNot script_0801482E
	SetPlayerIdle
	SetAnimation 0x0008
	Wait 0x0020
	SetAnimation 0x0002
	MessageFromTargetPos 0x4215, 0x000c
	EnablePlayerControl
	Jump script_0801482E
script_08014862:
	SetAnimation 0x0008
	Wait 0x0020
	SetAnimation 0x0002
	SetSyncFlag 0x00000002
	Jump script_0801482E
script_08014878:
	SetAnimation 0x0009
	Wait 0x003c
	SetAnimation 0x0002
	SetSyncFlag 0x00000008
	Jump script_0801482E
script_0801488E:
	CheckSyncFlagAndClear 0x00000001
	JumpIf script_080148C2
	CheckSyncFlagAndClear 0x00000004
	JumpIf script_080148D8
	FacePlayerAndCheckDist
	JumpIfNot script_0801488E
	SetPlayerIdle
	SetAnimation 0x0008
	Wait 0x0020
	SetAnimation 0x0002
script_080148B6:
	MessageFromTargetPos 0x4216, 0x000c
	EnablePlayerControl
	Jump script_0801488E
script_080148C2:
	SetAnimation 0x0008
	Wait 0x0020
	SetAnimation 0x0002
	SetSyncFlag 0x00000002
	Jump script_0801488E
script_080148D8:
	SetAnimation 0x0009
	Wait 0x003c
	SetAnimation 0x0002
	SetSyncFlag 0x00000008
	Jump script_0801488E
	.2byte 0x0000
