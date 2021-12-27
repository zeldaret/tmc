@ Hyrule Town Intro Kid blocking the way
SCRIPT_START script_KidIntro2
	BeginBlock
	DoPostScriptAction 0x0001
	_0807E9D4
	DoPostScriptAction 0x000a
	Call sub_08062788
	EndBlock
script_0800F6F4:
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
	JumpIf script_0800F718
	CheckEntityInteractType
	JumpIfNot script_0800F6F4
	_0807E864
	_0807EB74
	Call sub_0806265C
	WaitUntilTextboxCloses
	_0807E878
	DoPostScriptAction 0x0001
	Jump script_0800F6F4
script_0800F718:
	Call sub_080627E8
	DoPostScriptAction 0x0006
SCRIPT_END
