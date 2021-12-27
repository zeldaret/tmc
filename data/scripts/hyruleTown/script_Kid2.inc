@ Hyrule Town Kid
SCRIPT_START script_Kid2
	BeginBlock
	DoPostScriptAction 0x0000
	Call sub_08062A48
	DoPostScriptAction 0x000a
	EndBlock
script_080102F2:
	CheckEntityInteractType
	JumpIfNot script_080102F2
	_0807E864
	_0807EB74
	Call sub_0806265C
	WaitUntilTextboxCloses
	_0807E878
	Jump script_080102F2
	.2byte 0x0000
