@ Minish Woods OBJECT_69 ?
@ Ezlo Trigger to explain how portals work
SCRIPT_START script_08012C98
	CheckGlobalFlag 0x0014
	JumpIfNot script_08012C98
script_08012CA0:
	EndBlock
	BeginBlock
	CheckPlayerInRegion 0x0398, 0x03b0, 0x2040
	JumpIfNot script_08012CA0
	CheckPlayerMinish
	JumpIf script_08012CD2
	EndBlock
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage 0x2202
	WaitUntilTextboxCloses
.ifdef JP
	SetLocalFlag 0x003a
.else
.ifdef EU
	SetLocalFlag 0x003a
.else
.ifdef DEMO_JP
	SetLocalFlag 0x003a @ TODO deduplicate
.else
	SetLocalFlag 0x003b
.endif
.endif
.endif
	Call sub_0807DF50
	EnablePlayerControl
script_08012CD2:
	DoPostScriptAction 0x0006
SCRIPT_END
