@ Library Townsperson
SCRIPT_START script_LibraryVisitor
	BeginBlock
	Call sub_08061FD8
	Call sub_08061E70
	DoPostScriptAction 0x000a
	EndBlock
script_08008DA0:
	CheckEntityInteractType
	JumpIfNot script_08008DA0
	_0807E864
	_0807EB74
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	_0807E878
	Jump script_08008DA0
	.2byte 0x0000
