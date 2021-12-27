@ DHC right Guard at King cell
SCRIPT_START script_GuardCellRight
	BeginBlock
	_0807EB44 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	DoPostScriptAction 0x000a
	_0807E9D4
	EndBlock
script_0800E484:
	CheckEntityInteractType
	JumpIfNot script_0800E484
	_0807E864
	_0807EB74
	CallWithArg sub_0807F3D8, 0x00000000
	MessageNoOverlap 0x2407
	WaitUntilTextboxCloses
	_0807E878 
	Jump script_0800E484


