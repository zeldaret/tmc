@ Intro Hyrule Town Beedle
script_BeedleIntro::
	BeginBlock
	SetAnimationState 0x0004
	SetAnimation 0x0000
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	Call SetPriorityMessage
	EndBlock
script_0800F604:
	CheckEntityInteractType
	JumpIfNot script_0800F604
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000008
	MessageNoOverlap TEXT_FESTIVAL, 0x11
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800F604
