@ Intro Hyrule Town Guard
SCRIPT_START script_GuardIntro
	BeginBlock
	SetAnimationState 0x0006
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000008
	EndBlock
script_0800F5C8:
	CheckEntityInteractType
	JumpIfNot script_0800F5C8
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000008
	Call sub_08064428
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800F5C8
	.2byte 0x0000
