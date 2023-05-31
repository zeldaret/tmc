@ Trilby Highlands Percy in front of house
SCRIPT_START script_PercyOutside
	BeginBlock
	SetAnimationState 0x0004
	CallWithArg sub_0807F3D8, 0x00000008
	DoPostScriptAction 0x000a
	Call Percy_MakeInteractable
	EndBlock
script_08012EDC:
	CheckEntityInteractType
	JumpIfNot script_08012EDC
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x0000000c
	Call sub_0806B4F0
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	CallWithArg sub_0807F3D8, 0x00000008
	Jump script_08012EDC
