@ Intro Hyrule Town Kid
SCRIPT_START script_KidIntro3
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
script_0800F72C:
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
	JumpIfNot script_0800F72C
	DoPostScriptAction 0x0007
	Jump script_KidIntro1


