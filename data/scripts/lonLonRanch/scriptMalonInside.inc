@ Lon Lon Farm Malon in ranch house?
SCRIPT_START scriptMalonInside
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	_0807E930 0x000a
	EndBlock
script_08014F0C:
	CheckEntityInteractType
	JumpIfNot script_08014F0C
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x200e
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	_0807E930 0x000a
	Jump script_08014F0C
	.2byte 0x0000
