@ Hyrule Town Mutoh
SCRIPT_START script_MutohInMill
	BeginBlock
	Call sub_08067100
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_0800954E:
	CheckEntityInteractType
	JumpIfNot script_0800954E
	_0807E864
	DoPostScriptAction 0x0001
	_0807EB74
	Call sub_080670E4
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	Jump script_0800954E
	.2byte 0x0000
