@ Town Minish above cafe 
SCRIPT_START script_TownMinish2
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_0800E73E:
	CheckEntityInteractType
	JumpIfNot script_0800E73E
	_0807E864
	_0807EB74
	CallWithArg sub_0806AF60, 0x00000000
	Call sub_0806AFE8
	WaitUntilTextboxCloses
	_0807E878
	Jump script_0800E73E
