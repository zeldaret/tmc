@ Intro Outside Castle OBJECT_69 2?
SCRIPT_START script_08015B34
	EndBlock
	BeginBlock
.ifdef JP
	CheckLocalFlag 0x0089
.else
.ifdef EU
	CheckLocalFlag 0x0089
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x0089 @ TODO deduplicate
.else
	CheckLocalFlag 0x008b
.endif
.endif
.endif
	JumpIf script_08015B7E
	@ Prevent player from leaving to Hyrule Town
	CallWithArg sub_0807F6B4, 0x00000318
	JumpIfNot script_08015B34
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	MessageFromTargetPos 0x2506, 0x0002
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtIntroBusinessScrub4
	WaitForSyncFlagAndClear 0x00000004
	Call sub_0807DF50
	EnablePlayerControl
	Jump script_08015B34
script_08015B7E:
	DoPostScriptAction 0x0006
SCRIPT_END
