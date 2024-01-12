@ Hyrule Town ~~Carlov~~ Burlov
SCRIPT_START script_Carlov
	BeginBlock
	_0807E9D4
	SetAnimationState 0x0000
	SetEntitySpeed 0x01c0
	DoPostScriptAction 0x000a
	EndBlock
script_08014462:
	FacePlayerAndCheckDist
	JumpIfNot script_08014462
	SetPlayerIdle
	SetAnimation 0x0008
	Wait 0x0020
	SetAnimation 0x0002
	MessageFromTarget TEXT_BURLOV, 0x02
	MessageFromTarget TEXT_BURLOV, 0x03
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIfNot script_080144F0
	DoPostScriptAction 0x0001
	Wait 0x008c
	DoPostScriptAction 0x0000
	HasRupees 10
	JumpIf script_080144A2
	MessageFromTarget TEXT_BURLOV, 0x04
	Jump script_080144FC
script_080144A2:
	Call sub_0806E250
	JumpIfNot script_080144B8
	MessageFromTarget TEXT_BURLOV, 0x0b
	_0807EB38
	JumpTable script_080144B8, script_080144C0
script_080144B8:
	ClearLocalFlag 0x0093
	Jump script_080144C8
script_080144C0:
	SetLocalFlag 0x0093
.ifdef USA
	SetLocalFlag 0x00d3
.else
.ifdef DEMO_USA
	SetLocalFlag 0x00d3
.endif
.endif
script_080144C8:
	ModRupees -10
	MessageFromTarget TEXT_BURLOV, 0x0c
	PlaySound SFX_BUTTON_PRESS
	Wait 0x0018
	SetRoomFlag 0x0000
	SetLocalFlag 0x0092
	MoveToOffset 0x0000, -96
	Call DisablePauseMenu
	Jump script_080144FC
script_080144F0:
	SetAnimation 0x0009
	Wait 0x003c
	SetAnimation 0x0002
script_080144FC:
	EnablePlayerControl
	CheckRoomFlag 0x0000
	JumpIfNot script_08014462
.ifdef USA
	_0807E9DC
.else
.ifdef DEMO_USA
	_0807E9DC
.else
.ifdef DEMO_JP
	_0807E9DC
.endif
.endif
.endif
SCRIPT_END
	.align 2, 0

