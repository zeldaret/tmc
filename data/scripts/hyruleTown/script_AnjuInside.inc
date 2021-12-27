@ Hyrule Town Anju inside
SCRIPT_START script_AnjuInside
	BeginBlock
	_0807E9D4
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	EndBlock
script_08010132:
	CheckEntityInteractType
	JumpIfNot script_08010132
	_0807E864 
	_0807EB74 
	MessageFromTarget 0x4f22
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_08010132
