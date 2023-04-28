@ Hyrule Town SittingPerson
SCRIPT_START script_SittingPerson
	BeginBlock
	Call SittingPerson_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
	BeginBlock
	CallWithArg sub_08063850, 0x00000000
	EndBlock
script_0800ED20:
	CheckEntityInteractType
	JumpIfNot script_0800ED20
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_08063850, 0x00000000
	Call SittingPersion_ShowDialogue
	WaitUntilTextboxCloses
	JumpIfNot script_0800ED46
	GiveKinstone 0x0070
	WaitPlayerGetItem
script_0800ED46:
	EnablePlayerControl
	Call sub_08063874
	CallWithArg sub_08063850, 0x00000000
	Jump script_0800ED20
