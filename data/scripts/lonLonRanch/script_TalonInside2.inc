@ Lon Lon Ranch Talon inside
SCRIPT_START script_TalonInside2
	BeginBlock
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_08014EE0:
	CheckEntityInteractType
	JumpIfNot script_08014EE0
	_0807E864 
	_0807EB74 
	MessageNoOverlap 0x200d
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_08014EE0
	.2byte 0x0000
