@ Hyrule Castle Guard kicking Link out
SCRIPT_START script_GuardGarden7
	CheckRoomFlag 0x000f
	JumpIfNot script_GuardGarden7
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
script_08011AFA:
	MessageFromTargetPos 0x1321, 0x0007
	WaitUntilTextboxCloses
.ifdef JP
	SetLocalFlag 0x0011
.else
.ifdef EU
	SetLocalFlag 0x0011
.else
.ifdef DEMO_JP
	SetLocalFlag 0x0011 @ TODO deduplicate
.else
	SetLocalFlag 0x0010
.endif
.endif
.endif
	CallWithArg sub_0806DA1C, 0x00000003
	EnablePlayerControl
	Call sub_0807DF50
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
