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
	CallWithArg sub_0807F6B4, 0x00000318
	JumpIfNot script_08015B34
	EndBlock
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	TextboxNoOverlapFollowPos 0x2506, 0x0002
	WaitUntilTextboxCloses
	StartPlayerScript script_08015B84
	WaitForSomething2 0x00000004
	Call sub_0807DF50
	_0807E878
	Jump script_08015B34
script_08015B7E:
	DoPostScriptAction 0x0006
SCRIPT_END
