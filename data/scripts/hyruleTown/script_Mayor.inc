@ Hyrule Town Mayor Hagen
SCRIPT_START script_Mayor
	BeginBlock
	Call MayorHagen_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0008
	EndBlock
script_0800EA6A:
	CheckEntityInteractType
	JumpIfNot script_0800EA6A
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000004
	Call WaitForAnimDone
	SetAnimation 0x0009
	Call sub_0806CE80
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimation 0x000a
	Call WaitForAnimDone
	SetAnimation 0x0008
	Jump script_0800EA6A
