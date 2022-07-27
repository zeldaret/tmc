@ DHC right Guard at King cell
SCRIPT_START script_GuardCellRight
	BeginBlock
	SetAnimationState 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	DoPostScriptAction 0x000a
	_0807E9D4
	EndBlock
script_0800E484:
	CheckEntityInteractType
	JumpIfNot script_0800E484
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	MessageNoOverlap TEXT_BREAK_VAATI_CURSE, 0x07
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800E484


