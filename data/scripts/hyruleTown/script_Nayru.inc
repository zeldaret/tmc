@ Hyrule Town Nayru
SCRIPT_START script_Nayru
	BeginBlock
	Call sub_08064928
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
	JumpIf script_08011D6E
	EndBlock
script_08011D46:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011D46
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4513
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D46
script_08011D6E:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002b
	JumpIf script_08011D46
	CheckGlobalFlag 0x002d
	JumpIf script_08011D46
	CheckEntityInteractType
	JumpIfNot script_08011D6E
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3103
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIf script_08011DBA
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D6E
script_08011DAC:
	CheckEntityInteractType
	JumpIfNot script_08011DAC
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_08011DBA:
	MessageNoOverlap 0x3106
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002c
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011DAC
	.2byte 0x0000
