@ Outside Castle Guard
@ also at Lon Lon Ranch
SCRIPT_START script_GuardNorthHyruleField
	BeginBlock
	SetAnimationState 0x0004
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08014E2C:
	CheckEntityInteractType
	JumpIfNot script_08014E2C
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	Call sub_08064428
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08014E2C
	.2byte 0x0000
