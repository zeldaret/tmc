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
.ifdef JP
	CheckLocalFlag 0x00ca
.else
.ifdef EU
	CheckLocalFlag 0x00ca
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00ca @ TODO deduplicate
.else
	CheckLocalFlag 0x00cd
.endif
.endif
.endif
	JumpIf script_0800F6C4
	MessageNoOverlap 0x2512
	Jump script_0800F6C8
script_0800F6C4:
	MessageNoOverlap 0x251f
script_0800F6C8:
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_0800F6A0
	.2byte 0x0000
