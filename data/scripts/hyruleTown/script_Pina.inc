@ Hyrule Town Pina
SCRIPT_START script_Pina
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0000
	Call Pina_MakeInteractable
	DoPostScriptAction 0x000a
	Call SetPriorityMessage
	EndBlock
script_080104BC:
	CheckEntityInteractType
	JumpIfNot script_080104BC
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000004
	Call sub_08063C90
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	CallWithArg sub_0807F3D8, 0x00000000
	Jump script_080104BC
