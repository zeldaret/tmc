@ Older lady in cat persons house
SCRIPT_START script_OldLadyCatHouse2
	BeginBlock
	Call sub_08061E70
	DoPostScriptAction 0x000a
	_0807EB44 0x0006
	Call sub_08061FD8
	EndBlock
@ Common end code for Townspersons?
script_0800EBF4:
	CheckEntityInteractType
	JumpIfNot script_0800EBF4
	_0807E864
	_0807EB74
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800EBF4
	.2byte 0x0000
