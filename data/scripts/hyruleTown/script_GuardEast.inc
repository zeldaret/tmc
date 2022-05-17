@ Hyrule Town Guard east
SCRIPT_START script_GuardEast
	BeginBlock
	CheckInventory1 ITEM_PACCI_CANE
	JumpIf script_0800FF6A
	SetAnimationState 0x0006
	_0807E9D4
	CallWithArg sub_0807F3D8, 0x00000008
	EndBlock
script_0800FF34:
	EndBlock
	BeginBlock
	DoPostScriptAction 0x000b
	Call sub_08064198
	CheckEntityInteractType
	JumpIfNot script_0800FF34
	EndBlock
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000008
	Call sub_08064428
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800FF34
script_0800FF6A:
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0006
SCRIPT_END
