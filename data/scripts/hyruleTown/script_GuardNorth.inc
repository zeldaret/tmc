@ Hyrule Town Guard north
SCRIPT_START script_GuardNorth
	BeginBlock
	CheckInventory1 ITEM_PACCI_CANE
	JumpIf script_0800FF0E
	SetAnimationState 0x0006
	_0807E9D4
	CallWithArg sub_0807F3D8, 0x00000008
	EndBlock
script_0800FED8:
	EndBlock
	BeginBlock
	DoPostScriptAction 0x000b
	Call sub_080642B8
	CheckEntityInteractType
	JumpIfNot script_0800FED8
	EndBlock
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000008
	Call sub_08064428
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800FED8
script_0800FF0E:
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0006
SCRIPT_END
