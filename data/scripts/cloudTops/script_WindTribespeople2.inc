@ Cloud Top Windtribespeople woman on first floor
SCRIPT_START script_WindTribespeople2
	BeginBlock
	Call sub_0806C870
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0058
	JumpIfNot script_080149C6
	EndBlock
script_080149AA:
	_0807E30C
	JumpIfNot script_080149AA
	_0807E864
	_0807EB74
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_080149AA
script_080149C6:
	DoPostScriptAction 0x0006
SCRIPT_END
