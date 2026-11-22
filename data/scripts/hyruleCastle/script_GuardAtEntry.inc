@ Hyrule Castle inside Guard at entry
script_GuardAtEntry::
	BeginBlock
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08008DD8:
	CheckEntityInteractType
	JumpIfNot script_08008DD8
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	Call sub_080643D8
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_08008DD8
