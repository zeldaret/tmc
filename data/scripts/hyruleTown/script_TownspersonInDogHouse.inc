@ Hyrule Townsperson house with dog
SCRIPT_START script_TownspersonInDogHouse
	BeginBlock
	Call Townsperson_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	Call sub_08061FD8
	EndBlock
script_0800EB44:
	CheckEntityInteractType
	JumpIfNot script_0800EB44
	SetPlayerIdle
	FacePlayer
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800EB44
	.2byte 0x0000
