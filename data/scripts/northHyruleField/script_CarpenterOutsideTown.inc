@ Outside Castle Carpenter
@ Hyrule Town Carpenter
SCRIPT_START script_CarpenterOutsideTown
	BeginBlock
	Call sub_08067314
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	SetIntVariable 0x00000000
	Call sub_080672B0
	EndBlock
script_08009592:
	CheckEntityInteractType
	JumpIfNot script_08009592
	_0807E864
	_0807EB74
	SetIntVariable 0x00000004
	Call sub_080672B0
	Call sub_080672C8
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	_0807EB44 0x0004
	SetIntVariable 0x00000000
	Call sub_080672B0
	Jump script_08009592
	.2byte 0x0000
