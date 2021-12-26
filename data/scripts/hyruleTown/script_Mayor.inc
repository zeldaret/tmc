@ Hyrule Town Mayor Hagen
SCRIPT_START script_Mayor
	BeginBlock
	Call sub_0806CE5C
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0008
	EndBlock
script_0800EA6A:
	CheckEntityInteractType
	JumpIfNot script_0800EA6A
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000004
	Call sub_0807F2D4
	_0807E930 0x0009
	Call sub_0806CE80
	WaitUntilTextboxCloses
	_0807E878
	_0807E930 0x000a
	Call sub_0807F2D4
	_0807E930 0x0008
	Jump script_0800EA6A
