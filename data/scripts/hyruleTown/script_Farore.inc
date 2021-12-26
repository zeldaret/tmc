@ Hyrule Town Farore
SCRIPT_START script_Farore
	BeginBlock
	Call sub_08064A28
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
	JumpIf script_08011E1A
	EndBlock
script_08011DF2:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011DF2
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x4514
	WaitUntilTextboxCloses
	_0807E878 
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011DF2
script_08011E1A:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002b
	JumpIf script_08011DF2
	CheckGlobalFlag 0x002c
	JumpIf script_08011DF2
	CheckEntityInteractType
	JumpIfNot script_08011E1A
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3104
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_08011E66
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E1A
script_08011E58:
	CheckEntityInteractType
	JumpIfNot script_08011E58
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_08011E66:
	MessageNoOverlap 0x3107
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002d
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E58
	.2byte 0x0000
