@ Nayru moved in
SCRIPT_START script_NayruMovedIn
	BeginBlock
	Call sub_08064928
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_080120C6:
	CheckEntityInteractType
	JumpIfNot script_080120C6
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	CheckLocalFlag 0x0095
	JumpIf script_080120EA
	MessageNoOverlap 0x3116
	WaitUntilTextboxCloses
	SetLocalFlag 0x0095
	Jump script_0801212A
script_080120EA:
	_0807E48C 0x002f
	JumpIfNot script_080120FC
	MessageNoOverlap 0x3117
	WaitUntilTextboxCloses
	Jump script_0801212A
script_080120FC:
	MessageNoOverlap 0x3118
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIfNot script_0801212A
	_0807E48C 0x0020
	JumpIfNot script_08012126
	MessageNoOverlap 0x3119
	WaitUntilTextboxCloses
	_0807F034 0x002f
	WaitPlayerGetItem
.ifdef USA
	Call sub_0807FC24
.else
.ifdef DEMO_USA
	Call sub_0807FC24
.else
.ifdef DEMO_JP
	Call sub_0807FC24
.endif
.endif
.endif
	Jump script_0801212A
script_08012126:
	MessageNoOverlap 0x311b
script_0801212A:
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_080120C6
	.align 2, 0

