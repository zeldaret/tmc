@ Hyrule Town Windstribepeople in house
SCRIPT_START script_WindTribespeopleVisitor
	BeginBlock
	Call sub_0806C870
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0000
	EndBlock
script_0800EB0E:
	_0807E30C
	JumpIfNot script_0800EB0E
	_0807E864
	_0807EB74
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800EB0E
	.2byte 0x0000
