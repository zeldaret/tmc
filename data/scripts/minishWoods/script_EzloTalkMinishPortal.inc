@ Minish Woods Ezlo Talks after exiting portal for the first time
SCRIPT_START script_EzloTalkMinishPortal
	EndBlock
	BeginBlock
	CheckPlayerMinish
	JumpIfNot script_EzloTalkMinishPortal
	CheckPlayerInRegion 0x0380, 0x03b0, 0x4040
	JumpIfNot script_EzloTalkMinishPortal
	ComparePlayerAction 0x0015
	JumpIf script_EzloTalkMinishPortal
	SetPlayerIdle
	Call sub_0807DF28
	EndBlock
	EzloMessage 0x2203
	WaitUntilTextboxCloses
.ifdef JP
	SetLocalFlag 0x003d
.else
.ifdef EU
	SetLocalFlag 0x003d
.else
.ifdef DEMO_JP
	SetLocalFlag 0x003d @ TODO deduplicate
.else
	SetLocalFlag 0x003e
.endif
.endif
.endif
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
