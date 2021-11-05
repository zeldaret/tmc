SCRIPT_START script_0800F554
	BeginBlock
	Call sub_08061FE4
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_0800F564:
	CheckEntityInteractType
	JumpIfNot script_0800F564
	_0807E864
	_0807EB74
	Call sub_08061FE4
	Call sub_08061FF4
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800F564
	.2byte 0x0000
SCRIPT_START script_0800F584
	BeginBlock
	DoPostScriptAction 0x0001
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_0800F592:
	CheckEntityInteractType
	JumpIfNot script_0800F592
	_0807E864
	_0807EB74
	Call sub_0806265C
	WaitUntilTextboxCloses
	_0807E878
	DoPostScriptAction 0x0001
	Jump script_0800F592
	.2byte 0x0000
SCRIPT_START script_0800F5B0
	BeginBlock
	_0807EB44 0x0006
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000008
	EndBlock
script_0800F5C8:
	CheckEntityInteractType
	JumpIfNot script_0800F5C8
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000008
	Call sub_08064428
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800F5C8
	.2byte 0x0000
SCRIPT_START script_0800F5EC
	BeginBlock
	_0807EB44 0x0004
	_0807E930 0x0000
	_0807E9D4
	DoPostScriptAction 0x000a
	Call sub_0807F348
	EndBlock
script_0800F604:
	CheckEntityInteractType
	JumpIfNot script_0800F604
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000008
	MessageNoOverlap 0x2511
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800F604
SCRIPT_START script_0800F628
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0001
	EndBlock
script_0800F636:
	_0807E30C
	JumpIfNot script_0800F636
	_0807E864
	_0807EB74
	Call sub_0806C90C
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800F636
	.2byte 0x0000
SCRIPT_START script_0800F650
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4
	EndBlock
script_0800F662:
	CheckEntityInteractType
	JumpIfNot script_0800F662
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0001
	Call sub_0806B4F0
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	DoPostScriptAction 0x0000
	Jump script_0800F662
	.2byte 0x0000


SCRIPT_START script_0800F688
	BeginBlock
	_0807EB44 0x0004
	_0807E930 0x0000
	_0807E9D4
	DoPostScriptAction 0x000a
	Call sub_0807F348
	EndBlock
script_0800F6A0:
	CheckEntityInteractType
	JumpIfNot script_0800F6A0
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000004
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
	JumpIf script_0800F6C4
	MessageNoOverlap 0x2512
	Jump script_0800F6C8
script_0800F6C4:
	MessageNoOverlap 0x251f
script_0800F6C8:
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_0800F6A0
	.2byte 0x0000
SCRIPT_START script_0800F6E0
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
