@ Hyrule Town Stamp
SCRIPT_START script_Stamp
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E9D4
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_080107AA:
	CheckEntityInteractType
	JumpIfNot script_080107AA
	_0807E864
	Call sub_0807F2D4
	DoPostScriptAction 0x0001
	Call sub_08062CBC
	WaitUntilTextboxCloses
	_0807E878
	DoPostScriptAction 0x0000
	Jump script_080107AA
	.2byte 0x0000
