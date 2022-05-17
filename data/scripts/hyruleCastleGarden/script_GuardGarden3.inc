@ Intro Hyrule Castle Garden Guard
SCRIPT_START script_GuardGarden3
	BeginBlock
	SetAnimationState 0x0004
script_0801196A:
	_0807E9D4
	DoPostScriptAction 0x000a
	CallWithArg sub_0807F3D8, 0x00000000
	EndBlock
script_0801197C:
	CheckEntityInteractType
	JumpIfNot script_0801197C
	SetPlayerIdle
	FacePlayer
	CallWithArg sub_0807F3D8, 0x00000000
	CheckGlobalFlag TABIDACHI
	JumpIf script_080119A0
	MessageFromTarget TEXT_PROLOGUE, 0x3d
	Jump script_080119A4
script_080119A0:
	MessageFromTarget TEXT_PROLOGUE, 0x3f
script_080119A4:
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0801197C
