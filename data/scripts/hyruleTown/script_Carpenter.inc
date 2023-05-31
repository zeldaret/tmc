@ Hyrule Town carpeter next to post
SCRIPT_START script_Carpenter
	BeginBlock
	SetAnimationState 0x0004
	CallWithArg sub_080672B0, 0x00000000
	DoPostScriptAction 0x000a
	Call Carpenter_MakeInteractable
	EndBlock
script_08010AB4:
	CheckEntityInteractType
	JumpIfNot script_08010AB4
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_080672B0, 0x00000004
	Call sub_08067304
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	CallWithArg sub_080672B0, 0x00000000
	Jump script_08010AB4
