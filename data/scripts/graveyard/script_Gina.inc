@ Graveyard Gina
SCRIPT_START script_Gina
	BeginBlock
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock
	CheckLocalFlag 0x005f
	JumpIf script_0800B94E
script_0800B934:
	CheckEntityInteractType
	JumpIfNot script_0800B934
	_0807E864 
	_0807EB74 
	MessageFromTarget 0x3f19
	WaitUntilTextboxCloses
	SetLocalFlag 0x005f
	_0807E878
	Jump script_0800B934
script_0800B94E:
	CheckEntityInteractType
	JumpIfNot script_0800B94E
	_0807E864 
	_0807EB74 
	MessageFromTarget 0x3f1a
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_0800B94E
