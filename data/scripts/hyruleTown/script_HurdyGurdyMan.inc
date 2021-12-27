@ Hyrule Town Cafe HurdyGurdyMan
SCRIPT_START script_HurdyGurdyMan
	BeginBlock
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0008
	Call sub_0806E440
	EndBlock
script_08010BCA:
	CheckEntityInteractType
	JumpIfNot script_08010BCA
	_0807E864
	_0807EB74
	DoPostScriptAction 0x0000
	Call sub_0806E418
	WaitUntilTextboxCloses
	_0807E878
	_0807E930 0x0008
	Jump script_08010BCA
	.2byte 0x0000
