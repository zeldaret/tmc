@ Hyrule Town Farore when one of them has moved in
SCRIPT_START script_Farore2
	BeginBlock
	Call sub_08064A28
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011FAE:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002e
	JumpIf script_08011DF2
	CheckGlobalFlag 0x002f
	JumpIf script_08011DF2
	CheckEntityInteractType
	JumpIfNot script_08011FAE
	EndBlock
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	CheckGlobalFlag 0x0048
	JumpIf script_08011FE4
	MessageNoOverlap 0x4523
	WaitUntilTextboxCloses
	Jump script_08011FF0
script_08011FE4:
	MessageNoOverlap 0x3110
	WaitUntilTextboxCloses
	_0807E3E8 
	JumpIf script_0801200C
script_08011FF0:
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011FAE
script_08011FFE:
	CheckEntityInteractType
	JumpIfNot script_08011FFE
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
script_0801200C:
	MessageNoOverlap 0x3113
	WaitUntilTextboxCloses
	SetGlobalFlag 0x0030
	_0807E878
	_0807EB44 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011FFE


