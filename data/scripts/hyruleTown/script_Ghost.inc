@ Hyrule Town Ghost
script_Ghost::
	BeginBlock
	DoPostScriptAction 0x0007
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	SetAnimationState 0x0006
	DoPostScriptAction 0x0000
	EndBlock
script_0801027A:
	CheckEntityInteractType
	JumpIfNot script_0801027A
	SetPlayerIdle
	FacePlayer
	Call sub_08065F64
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0801027A
	.align 2
