@ Intro Hyrule Town WindTribespeople
SCRIPT_START script_WindtribespeopleIntro
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0001
	EndBlock
script_0800F636:
	_0807E30C
	JumpIfNot script_0800F636
	_0807E864
	_0807EB74
	Call sub_0806C90C
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800F636
	.2byte 0x0000
