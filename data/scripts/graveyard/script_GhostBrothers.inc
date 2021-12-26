@ Graveyard GhostBrothers
SCRIPT_START script_GhostBrothers
	BeginBlock
	Call sub_08065D00
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	EndBlock
script_0800975A:
	CheckEntityInteractType
	JumpIfNot script_0800975A
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	Call sub_08065F64
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800975A
	.2byte 0x0000
