SCRIPT_START script_0800FF74
	BeginBlock
	_0807EB44 0x0002
	_0807E9D4
	CallWithArg sub_0807F3D8, 0x00000008
	Call sub_080644A4
.ifdef JP
	ClearLocalFlag 0x00c4
.else
.ifdef DEMO_JP
	ClearLocalFlag 0x00c4 @ TODO deduplicate
.else
.ifndef EU
	ClearLocalFlag 0x00c7
.endif
.endif
.endif
	EndBlock
script_0800FF92:
	EndBlock
	BeginBlock
	DoPostScriptAction 0x000a
.ifdef JP
	CheckLocalFlag 0x00cb
.else
.ifdef EU
	CheckLocalFlag 0x00cb
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00cb @ TODO deduplicate
.else
	CheckLocalFlag 0x00ce
.endif
.endif
.endif
	JumpIf script_0800FFCC
	DoPostScriptAction 0x000b
	Call sub_08064198
.ifdef JP
	CheckLocalFlag 0x00c4
.else
.ifdef EU
	CheckLocalFlag 0x00c4
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00c4 @ TODO deduplicate
.else
	CheckLocalFlag 0x00c7
.endif
.endif
.endif
	JumpIfNot script_0800FFCC
	Call sub_08064488
	CheckPlayerInRegion2 0x4040
	JumpIfNot script_0800FFCC
	Call sub_08064470
	JumpIf script_08010014
script_0800FFCC:
	CheckEntityInteractType
	JumpIfNot script_0800FF92
	EndBlock
.ifdef JP
	SetLocalFlag 0x00c4
.else
.ifdef EU
	SetLocalFlag 0x00c4
.else
.ifdef DEMO_JP
	SetLocalFlag 0x00c4 @ TODO deduplicate
.else
	SetLocalFlag 0x00c7
.endif
.endif
.endif
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000008
	CheckInventory1 0x0048
	JumpIf script_0800FFF8
	MessageNoOverlap 0x3401
	WaitUntilTextboxCloses
	Jump script_08010060
script_0800FFF8:
.ifdef JP
	CheckLocalFlag 0x00cb
.else
.ifdef EU
	CheckLocalFlag 0x00cb
.else
.ifdef DEMO_JP
	CheckLocalFlag 0x00cb @ TODO deduplicate
.else
	CheckLocalFlag 0x00ce
.endif
.endif
.endif
	JumpIfNot script_0801000A
	MessageNoOverlap 0x340b
	WaitUntilTextboxCloses
	Jump script_08010060
script_0801000A:
	MessageNoOverlap 0x3402
	WaitUntilTextboxCloses
	Jump script_08010060
script_08010014:
	EndBlock
	_0807E888
	Call sub_0807F594
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000008
	PlaySound SFX_TASK_COMPLETE
	MessageNoOverlap 0x340a
	WaitUntilTextboxCloses
	_0807EB44 0x0004
	CallWithArg sub_0807F3D8, 0x0000000c
	SetEntitySpeed 0x0100
	_0807EDD4 0x0018, 0x0108
	_0807EB44 0x0002
	CallWithArg sub_0807F3D8, 0x00000008
.ifdef JP
	SetLocalFlag 0x00cb
.else
.ifdef EU
	SetLocalFlag 0x00cb
.else
.ifdef DEMO_JP
	SetLocalFlag 0x00cb @ TODO deduplicate
.else
	SetLocalFlag 0x00ce
.endif
.endif
.endif
script_08010060:
	Call sub_080644A4
	CallWithArg sub_0807F5B0, 0x0000000a
	_0807E878
	Jump script_0800FF92
	.2byte 0x0000
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	CallWithArg sub_080672B0, 0x00000000
	EndBlock
script_08010090:
	CheckEntityInteractType
	JumpIfNot script_08010090
	_0807E864
	_0807EB74
	CallWithArg sub_080672B0, 0x00000004
	MessageFromTarget 0x0a01
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	_0807EB44 0x0004
	CallWithArg sub_080672B0, 0x00000000
	Jump script_08010090
	DoPostScriptAction 0x0006
SCRIPT_END
