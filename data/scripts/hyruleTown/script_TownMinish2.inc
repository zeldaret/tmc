@ Town Minish above cafe 
SCRIPT_START script_TownMinish2
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	EndBlock
script_0800E73E:
	CheckEntityInteractType
	JumpIfNot script_0800E73E
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0806AF60, 0x00000000
	Call sub_0806AFE8
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800E73E
