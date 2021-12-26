@ Hyrule Townsperson house with cat
SCRIPT_START script_CatPerson
	BeginBlock
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	Call sub_08061FD8
	EndBlock
script_0800EC6C:
	CheckEntityInteractType
	JumpIfNot script_0800EC6C
	_0807E864
	_0807EB74
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800EC6C
	.2byte 0x0000
