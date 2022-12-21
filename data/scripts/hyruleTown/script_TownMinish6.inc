@ Hyrule Town TownMinish at Dr Left
SCRIPT_START script_TownMinish6
	BeginBlock
	SetEntitySpeed 0x0080
	_0807E9D4
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x007b
	JumpIf script_0800F082
	EndBlock
	Jump script_0800EFFE
script_0800EFDA:
	SetAnimationState 0x0006
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	SetAnimationState 0x0004
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
script_0800EFFE:
	SetAnimationState 0x0002
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	SetAnimationState 0x0002
	CallWithArg sub_0806AF60, 0x00000004
	MoveTo 0x0088, 0x0040
	DoPostScriptAction 0x000a
	SetAnimationState 0x0002
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	SetAnimationState 0x0004
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	SetAnimationState 0x0006
	CallWithArg sub_0806AF60, 0x00000008
	Wait 0x0004
	SetAnimationState 0x0006
	CallWithArg sub_0806AF60, 0x00000004
	MoveTo 0x0068, 0x0040
	DoPostScriptAction 0x000a
	CheckLocalFlag 0x007b
	JumpIf script_0800F082
	Jump script_0800EFDA
script_0800F082:
	EndBlock
	Call sub_0806AEE4
	Jump script_0800F082
	.2byte 0x0000
