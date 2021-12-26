@ Hyrule Town Din
SCRIPT_START script_Din
	BeginBlock
	Call sub_08064828
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
	JumpIf script_08011CC2
	EndBlock
script_08011C9A:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011C9A
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4515
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011C9A
script_08011CC2:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002c
	JumpIf script_08011C9A
	CheckGlobalFlag 0x002d
	JumpIf script_08011C9A
	CheckEntityInteractType
	JumpIfNot script_08011CC2
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3105
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_08011D0E
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011CC2
script_08011D00:
	CheckEntityInteractType
	JumpIfNot script_08011D00
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_08011D0E:
	MessageNoOverlap 0x3108
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002b
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D00
	.2byte 0x0000
