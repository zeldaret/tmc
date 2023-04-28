@ Hyrule Town SmallTownMinish
SCRIPT_START script_SmallTownMinish
	BeginBlock
	CheckPlayerMinish
	JumpIfNot script_08010BAC
	Call MakeInteractableAsMinish
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0007
	DoPostScriptAction 0x000a
	EndBlock
script_08010B88:
	EndBlock
	BeginBlock
	CheckPlayerMinish
	JumpIfNot script_08010BAC
	CheckEntityInteractType
	JumpIfNot script_08010B88
	EndBlock
	SetPlayerIdle
	FacePlayer
	Call sub_0806E2DC
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08010B88
script_08010BAC:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
