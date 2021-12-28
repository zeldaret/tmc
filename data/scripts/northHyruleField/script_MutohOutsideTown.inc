@ Outside Castle Mutoh
SCRIPT_START script_MutohOutsideTown
	BeginBlock
	Call sub_08067100
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08009512:
	CheckEntityInteractType
	JumpIfNot script_08009512
	_0807E864
	DoPostScriptAction 0x0001
	_0807EB74
	Call sub_080670B4
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Jump script_08009512
	.2byte 0x0000
