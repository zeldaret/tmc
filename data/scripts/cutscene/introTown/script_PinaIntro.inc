@ Intro Hyrule Town Pina
SCRIPT_START script_PinaIntro
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0000
	_0807E9D4
	DoPostScriptAction 0x000a
	Call SetPriorityMessage
	EndBlock
script_0800F6A0:
	CheckEntityInteractType
	JumpIfNot script_0800F6A0
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000004
	CheckLocalFlag MACHI_01_DEMO
	JumpIf script_0800F6C4
	MessageNoOverlap TEXT_FESTIVAL, 0x12
	Jump script_0800F6C8
script_0800F6C4:
	MessageNoOverlap TEXT_FESTIVAL, 0x1f
script_0800F6C8:
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_0800F6A0
	.2byte 0x0000
