@ Intro Hyrule Town Townsperson
SCRIPT_START script_TownsperonIntro
	BeginBlock
	Call sub_08061FE4
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	EndBlock
script_0800F564:
	CheckEntityInteractType
	JumpIfNot script_0800F564
	SetPlayerIdle
	FacePlayer
	Call sub_08061FE4
	Call sub_08061FF4
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800F564
	.2byte 0x0000
