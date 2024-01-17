@ Hyrule Town Guard west
SCRIPT_START script_GuardWest
	BeginBlock
	SetAnimationState 0x0002
	_0807E9D4
	CallWithArg sub_0807F3D8, 0x00000008
	Call GuardWithSpear_ResetLastSwordMove
.ifndef EU
	ClearLocalFlag MACHI_02_HEISHI_TALK
.endif
	EndBlock
script_0800FF92:
	EndBlock
	BeginBlock
	DoPostScriptAction 0x000a
	CheckLocalFlag MACHI_02_HEISHI
	JumpIf script_0800FFCC
	DoPostScriptAction 0x000b
	Call sub_08064198
	CheckLocalFlag MACHI_02_HEISHI_TALK
	JumpIfNot script_0800FFCC
	Call GuardWithSpear_ResetLastSwordMoveIfNotInSwordState
	CheckPlayerInRegion2 0x4040
	JumpIfNot script_0800FFCC
	Call GuardWithSpear_CheckSwordMoveSpin
	JumpIf script_08010014
script_0800FFCC:
	CheckEntityInteractType
	JumpIfNot script_0800FF92
	EndBlock
	SetLocalFlag MACHI_02_HEISHI_TALK
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000008
	CheckInventory1 ITEM_SKILL_SPIN_ATTACK
	JumpIf script_0800FFF8
	MessageNoOverlap TEXT_TOWN, 0x01
	WaitUntilTextboxCloses
	Jump script_08010060
script_0800FFF8:
	CheckLocalFlag MACHI_02_HEISHI
	JumpIfNot script_0801000A
	MessageNoOverlap TEXT_TOWN, 0x0b
	WaitUntilTextboxCloses
	Jump script_08010060
script_0801000A:
	MessageNoOverlap TEXT_TOWN, 0x02
	WaitUntilTextboxCloses
	Jump script_08010060
script_08010014:
	EndBlock
	DisablePlayerControl
	Call WaitForPlayerIdle
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000008
	PlaySound SFX_TASK_COMPLETE
	MessageNoOverlap TEXT_TOWN, 0x0a
	WaitUntilTextboxCloses
	SetAnimationState 0x0004
	CallWithArg sub_0807F3D8, 0x0000000c
	SetEntitySpeed 0x0100
	MoveTo 0x0018, 0x0108
	SetAnimationState 0x0002
	CallWithArg sub_0807F3D8, 0x00000008
	SetLocalFlag MACHI_02_HEISHI
script_08010060:
	Call GuardWithSpear_ResetLastSwordMove
	CallWithArg sub_0807F5B0, 0x0000000a
	EnablePlayerControl
	Jump script_0800FF92
	.2byte 0x0000
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	CallWithArg sub_080672B0, 0x00000000
	EndBlock
script_08010090:
	CheckEntityInteractType
	JumpIfNot script_08010090
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_080672B0, 0x00000004
	MessageFromTarget TEXT_EMPTY, 0x01
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	SetAnimationState 0x0004
	CallWithArg sub_080672B0, 0x00000000
	Jump script_08010090
	DoPostScriptAction 0x0006
SCRIPT_END
