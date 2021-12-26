@ Hyrule Town Gorman at first house
@ and at second house when ready to sell
SCRIPT_START script_GormanFirstHouse
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	_0807E9D4
	EndBlock
script_0800FDB2:
	CheckEntityInteractType
	JumpIfNot script_0800FDB2
	_0807E864
	_0807EB74
	Call sub_08069888
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800FDB2
	.2byte 0x0000
