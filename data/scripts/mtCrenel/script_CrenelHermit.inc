@ Crenel Hermit
SCRIPT_START script_CrenelHermit
	BeginBlock
	Call Townsperson_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	Call sub_08061FD8
	EndBlock
script_0800B8FC:
	CheckEntityInteractType
	JumpIfNot script_0800B8FC
	SetPlayerIdle
	FacePlayer
	Call sub_08061FD8
	Call sub_08062048
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800B8FC
	.2byte 0x0000
