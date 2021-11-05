SCRIPT_START script_0800D6D0
	BeginBlock
.ifdef JP
	CheckLocalFlag 0x00f0
.else
.ifdef EU
	CheckLocalFlag 0x00f0
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00f0 @ TODO deduplicate
.else
	CheckLocalFlag 0x00f3
.endif
.endif
.endif
	JumpIf script_0800D6E8
	DoPostScriptAction 0x0008
	EndBlock
script_0800D6E0:
.ifdef JP
	CheckLocalFlag 0x00f0
.else
.ifdef EU
	CheckLocalFlag 0x00f0
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00f0 @ TODO deduplicate
.else
	CheckLocalFlag 0x00f3
.endif
.endif
.endif
	JumpIfNot script_0800D6E0
script_0800D6E8:
	DoPostScriptAction 0x0007
SCRIPT_END
	.2byte 0x0000
