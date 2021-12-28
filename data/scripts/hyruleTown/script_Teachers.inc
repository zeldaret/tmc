@ Hyrule Town Teachers
SCRIPT_START script_Teachers
	BeginBlock
	Call sub_0806C674
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	EndBlock
script_0800E806:
	CheckEntityInteractType
	JumpIfNot script_0800E806
	_0807E864
	_0807EB74
	Call sub_0806C70C
	WaitUntilTextboxCloses
	_0807E878
	_0807EB44 0x0004
	Jump script_0800E806
	.2byte 0x0000
