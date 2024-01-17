@ Town Minish on book above Dr Left
SCRIPT_START script_TownMinish3
	BeginBlock
	_0807E9D4
	DoPostScriptAction 0x000a
	SetEntitySpeed 0x0200
	CheckGlobalFlag MIZUKAKI_START
	JumpIfNot script_0800E77C
	CheckGlobalFlag MIZUKAKI_HARIFALL
	JumpIfNot script_0800E786
script_0800E77C:
	SetEntityPositionRelative 0x0188, 0x0098
	Jump script_0800E6F4
script_0800E786:
	EndBlock
script_0800E788:
	BeginBlock
	CheckGlobalFlag MIZUKAKI_HARIFALL
	JumpIf script_0800E7BA
	CheckEntityInteractType
	JumpIf script_0800E7A4
	Call sub_0806AEE4
	EndBlock
	Jump script_0800E788
script_0800E7A4:
	EndBlock
	SetPlayerIdle
	Call sub_0806AFE8
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800E788
script_0800E7BA:
	DoPostScriptAction 0x000f
	SetAnimationState 0x0002
	CallWithArg sub_0806AF60, 0x00000004
	Call sub_0806AF70
	LookAt 0x0188, 0x0058
script_0800E7D8:
	EndBlock
	BeginBlock
	Call sub_0806AF78
	MoveTowardsTarget
	JumpIfNot script_0800E7D8
	EntityHasHeight
	JumpIf script_0800E7D8
	EndBlock
	Jump script_0800E6F4
