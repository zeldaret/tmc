@ (Intro) Hyrule Town Brocco
SCRIPT_START script_Brocco
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0000
	Call Brocco_MakeInteractable
	DoPostScriptAction 0x000a
	Call SetPriorityMessage
	EndBlock
script_08010470:
	CheckEntityInteractType
	JumpIfNot script_08010470
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000004
	Call sub_080636D8
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_08010470
