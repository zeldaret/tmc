@ Tilby Highlands Percy in Tree or in his house
SCRIPT_START script_PercyInside
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	Call sub_0806B60C
	EndBlock
script_08012E9E:
	CheckEntityInteractType
	JumpIfNot script_08012E9E
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0001
	Call sub_0806B4F0
	WaitUntilTextboxCloses
	_0807E878
	DoPostScriptAction 0x0000
	Jump script_08012E9E
	.2byte 0x0000
