@ Hyrule Townsperson house with cat
SCRIPT_START script_CatPerson
	BeginBlock
	Call Townsperson_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	Call sub_08061FD8
	EndBlock
script_0800EC6C:
	CheckEntityInteractType
	JumpIfNot script_0800EC6C
	SetPlayerIdle
	FacePlayer
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800EC6C
	.2byte 0x0000
