@ Nayru completely alone
SCRIPT_START script_NayruAlone
	BeginBlock
	Call sub_08064928
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08012216:
	CheckEntityInteractType
	JumpIfNot script_08012216
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4525
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08012216
