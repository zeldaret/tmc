@ Lon Lon Ranch Malon
SCRIPT_START script_MalonAtRanch
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0001
	_0807E9D4
	EndBlock
script_0800B5FA:
	CheckEntityInteractType
	JumpIfNot script_0800B5FA
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x2009
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	Jump script_0800B5FA
