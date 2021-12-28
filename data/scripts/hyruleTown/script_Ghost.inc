@ Hyrule Town Ghost
SCRIPT_START script_Ghost
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E9D4
	DoPostScriptAction 0x000a
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
	EndBlock
script_0801027A:
	CheckEntityInteractType
	JumpIfNot script_0801027A
	_0807E864
	_0807EB74
	Call sub_08065F64
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0801027A
	.align 2
