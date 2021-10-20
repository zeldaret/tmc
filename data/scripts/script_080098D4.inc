SCRIPT_START script_080098D4
	BeginBlock
	EndBlock
script_080098D8:
	CheckGlobalFlag 0x0020
	JumpIfNot script_080098D8
script_080098E0:
	CheckInventory1 0x003c
	JumpIfNot script_080098E0
.ifdef JP
	CheckLocalFlag 0x5b
.else
.ifdef EU
	CheckLocalFlag 0x5b
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x5b @ TODO deduplicate
.else
	CheckLocalFlag 0x5d
.endif
.endif
.endif
	JumpIf script_08009910
.ifdef JP
	SetLocalFlag 0x005b
.else
.ifdef EU
	SetLocalFlag 0x005b
.else
.ifdef DEMO_JP
	SetLocalFlag 0x005b @ TODO deduplicate
.else
	SetLocalFlag 0x005d
.endif
.endif
.endif
	_0807E864
	Call sub_0807F9A4
	Call sub_0807DF28
	_0807EB28 0x280a
	WaitUntilTextboxCloses
	Call sub_0807DF50
	_0807E878
script_08009910:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
