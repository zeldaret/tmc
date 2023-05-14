@ Hyrule Townsperson 2?
SCRIPT_START script_Townsperson1
	BeginBlock
	Call sub_08061FE4
	Call Townsperson_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_080100DC:
	CheckEntityInteractType
	JumpIfNot script_080100DC
	SetPlayerIdle
	FacePlayer
	Call sub_08061FE4
	Call sub_08062048
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_080100DC
	.2byte 0x0000
