@ Farore completely alone
SCRIPT_START script_FaroreAlone
	BeginBlock
	Call sub_08064A28
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_0801224E:
	CheckEntityInteractType
	JumpIfNot script_0801224E
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4526
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_0801224E
