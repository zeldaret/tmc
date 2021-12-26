@ Hyrule Town Mama
SCRIPT_START script_Mama
	BeginBlock
	Call sub_0806C4F8
	DoPostScriptAction 0x000a
	_0807EB44 0x0000
	EndBlock
script_0800E932:
	CheckEntityInteractType
	JumpIfNot script_0800E932
	_0807E864
	_0807EB44 0x0004
	_0807E930 0x0004
script_0800E942:
	Call sub_0806C4A8
	JumpIfNot script_0800E942
	Call sub_0806C4DC
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0000
	_0807E930 0x0000
	Jump script_0800E932
	.2byte 0x0000
