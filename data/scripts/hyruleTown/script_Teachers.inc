@ Hyrule Town Teachers
SCRIPT_START script_Teachers
	BeginBlock
	Call Teachers_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	EndBlock
script_0800E806:
	CheckEntityInteractType
	JumpIfNot script_0800E806
	SetPlayerIdle
	FacePlayer
	Call sub_0806C70C
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	Jump script_0800E806
	.2byte 0x0000
