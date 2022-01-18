@ Player at Great Fairy
SCRIPT_START script_PlayerAtGreatFairy
	BeginBlock
	SetEntitySpeed 0x0100
	EndBlock
	CallWithArg sub_0807F6B4, 0x00000090
	JumpIfNot script_0800B7FC
	CallWithArg sub_0807F464, 0x00000078
	CallWithArg sub_0807F4F8, 0x00000090
script_0800B7EE:
	_0807E8E4_0
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000004
SCRIPT_END
script_0800B7FC:
	CallWithArg sub_0807F4F8, 0x00000090
	CallWithArg sub_0807F464, 0x00000078
	Jump script_0800B7EE
	BeginBlock
	DoPostScriptAction 0x0007
	SetAnimationState 0x0004
	SetAnimation 0x0000
	EndBlock
SCRIPT_END
	.2byte 0x0000
