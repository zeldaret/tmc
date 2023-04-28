@ Hyrule Town Cafe HurdyGurdyMan
SCRIPT_START script_HurdyGurdyMan
	BeginBlock
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0008
	Call HurdyGurdyMan_MakeInteractable
	EndBlock
script_08010BCA:
	CheckEntityInteractType
	JumpIfNot script_08010BCA
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	Call sub_0806E418
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimation 0x0008
	Jump script_08010BCA
	.2byte 0x0000
