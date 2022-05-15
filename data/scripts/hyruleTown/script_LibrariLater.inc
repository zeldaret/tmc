@ Library if you talk to him later?
SCRIPT_START script_LibrariLater
	BeginBlock
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0000
	EndBlock
script_08012440:
	CheckEntityInteractType
	JumpIfNot script_08012440
	SetPlayerIdle
	SetAnimation 0x0008
	Call WaitForAnimDone
	SetAnimation 0x0009
	Call sub_0806B2B4
	WaitUntilTextboxCloses
	CheckLocalFlag 0x00b3
	JumpIf script_08012474
	SetLocalFlag 0x00b3
	GivePlayerItem ITEM_HEART_CONTAINER
	WaitPlayerGetItem
.ifdef USA
	SetLocalFlag 0x00d0
.else
.ifdef DEMO_USA
	SetLocalFlag 0x00d0
.endif
.endif
script_08012474:
	EnablePlayerControl
	SetAnimation 0x0000
	Jump script_08012440
	.align 2, 0


