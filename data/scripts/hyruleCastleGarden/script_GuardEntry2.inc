@ Hyrule Castle Guard guarding entry to castle
script_GuardEntry2::
	BeginBlock
	SetAnimationState 0x0004
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08011A44:
	CheckEntityInteractType
	JumpIfNot script_08011A44
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	MessageFromTarget TEXT_VAATI, 0x20
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08011A44
