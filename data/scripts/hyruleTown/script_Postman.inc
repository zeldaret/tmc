@ Hyrule Town Postman
SCRIPT_START script_Postman
	BeginBlock
	CheckInventory1 ITEM_KINSTONE_BAG
	JumpIfNot script_08010B62
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	SetEntitySpeed 0x0180
	CallWithArg SetPriorityMessage
	Call sub_0806075C
	EndBlock
	WaitUntilTextboxCloses
	Call Postman_MakeInteractable
script_08010B10:
	EndBlock
	Call sub_0806076C
	DoPostScriptAction 0x0007
script_08010B1C:
	Call sub_08060700
script_08010B22:
	EndBlock
	BeginBlock
	CheckPlayerMinish
	JumpIf script_08010B3A
	CallWithArg sub_080608E4, 0x00000000
	JumpIf script_08010B44
script_08010B3A:
	MoveTowardsTarget
	JumpIfNot script_08010B22
	Jump script_08010B10
script_08010B44:
	EndBlock
	DoPostScriptAction 0x0000
script_08010B4A:
	EndBlock
	BeginBlock
	CallWithArg sub_080608E4, 0x00000001
	JumpIf script_08010B4A
	EndBlock
	Jump script_08010B1C
script_08010B62:
	DoPostScriptAction 0x0006
SCRIPT_END
