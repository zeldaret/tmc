@ Mines Melari in his room
SCRIPT_START script_MelariInRoom
	BeginBlock
	Call sub_08068884
	DoPostScriptAction 0x000a
	_0807EB44 0x0004
	_0807E930 0x0000
	EndBlock
script_0800D31E:
	EndBlock
	BeginBlock
	Call sub_08068910
	CheckEntityInteractType
	JumpIfNot script_0800D31E
	EndBlock
	_0807E864
	_0807EB74
	SetIntVariable 0x00000000
	Call sub_0806C028
	MessageFromTarget 0x1219
	WaitUntilTextboxCloses
	Wait 0x000f
	_0807E878
	Jump script_0800D31E
