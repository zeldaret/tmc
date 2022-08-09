@ Hyrule Castle Guard guarding entry to garden
SCRIPT_START script_GuardEntry3
	BeginBlock
	SetAnimationState 0x0002
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08011A7C:
	CheckEntityInteractType
	JumpIfNot script_08011A7C
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	@ Check if player has performed great spin.
	CallWithArg CheckLastSwordMove, 0x00000006
	JumpIf script_08011AFA
	MessageFromTarget TEXT_VAATI, 0x20
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08011A7C
	.2byte 0x0000
	BeginBlock
	SetAnimationState 0x0004
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_08011AC4:
	CheckEntityInteractType
	JumpIfNot script_08011AC4
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	MessageFromTarget TEXT_VAATI, 0x22
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08011AC4

