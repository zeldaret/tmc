@ Hyrule Town Kid in the Inn on the 2nd floor
SCRIPT_START script_KidInn
	BeginBlock
	DoPostScriptAction 0x000a
	Call Kid_MakeInteractable
	DoPostScriptAction 0x0000
script_0800D5AC:
	EndBlock
	Call sub_08062698
	Call sub_080626AC
	CallWithArg GetRandomInt, 0x00000004
	JumpTable script_0800D5CE, script_0800D5D8, script_0800D5E2, script_0800D5EC
script_0800D5CE:
	LookAt 0x0038, 0x0098
	Jump script_0800D5F2
script_0800D5D8:
	LookAt 0x0058, 0x0098
	Jump script_0800D5F2
script_0800D5E2:
	LookAt 0x0038, 0x00c8
	Jump script_0800D5F2
script_0800D5EC:
	LookAt 0x0058, 0x00c8
script_0800D5F2:
	EndBlock
	BeginBlock
	Call sub_080626C0
	JumpIf script_0800D5AC
	MoveTowardsTarget
	JumpIfNot script_0800D5F2
	Jump script_0800D5AC
	.2byte 0x0000
