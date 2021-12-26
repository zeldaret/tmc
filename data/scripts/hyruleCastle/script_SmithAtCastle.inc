@ Hyrule Castle Smith
SCRIPT_START script_SmithAtCastle
	BeginBlock
	_0807EB44 0x0006
	DoPostScriptAction 0x0000
script_080092B2:
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_080092BA:
	CheckEntityInteractType
	JumpIfNot script_080092BA
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x105e
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_080092BA
