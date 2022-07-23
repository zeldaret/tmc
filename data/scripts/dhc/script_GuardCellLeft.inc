@ DHC left Guard at King cell
SCRIPT_START script_GuardCellLeft
	BeginBlock
	SetAnimationState 0x0002
	CallWithArg sub_0807F3D8, 0x00000000
	DoPostScriptAction 0x000a
	_0807E9D4
	EndBlock
script_0800E44C:
	CheckEntityInteractType
	JumpIfNot script_0800E44C
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	MessageNoOverlap TEXT_BREAK_VAATI_CURSE, 0x05
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800E44C
