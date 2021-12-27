@ Hyrule Townsperson 2?
SCRIPT_START script_Townsperson1
	BeginBlock
	Call sub_08061FE4
	Call sub_08061E70
	DoPostScriptAction 0x000a
	EndBlock
script_080100DC:
	CheckEntityInteractType
	JumpIfNot script_080100DC
	_0807E864
	_0807EB74
	Call sub_08061FE4
	Call sub_08062048
	WaitUntilTextboxCloses
	_0807E878
	Jump script_080100DC
	.2byte 0x0000
