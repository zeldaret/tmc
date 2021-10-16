SCRIPT_START script_08012CD8
	EndBlock
	BeginBlock
	_0807E564
	JumpIfNot script_08012CD8
	CheckPlayerInRegion 0x0380, 0x03b0, 0x4040
	JumpIfNot script_08012CD8
	ComparePlayerAction 0x0015
	JumpIf script_08012CD8
	_0807E864
	Call sub_0807DF28
	EndBlock
	_0807EB28 0x2203
	_0807EA94
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
	_0807E878
	DoPostScriptAction 0x0006
SCRIPT_END
