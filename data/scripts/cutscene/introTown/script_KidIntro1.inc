@ Intro Hyrule Town Kid listening to Townsperson
script_KidIntro1::
	BeginBlock
	DoPostScriptAction 0x0001
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	EndBlock
script_0800F592:
	CheckEntityInteractType
	JumpIfNot script_0800F592
	SetPlayerIdle
	FacePlayer
	Call sub_0806265C
	WaitUntilTextboxCloses
	EnablePlayerControl
	DoPostScriptAction 0x0001
	Jump script_0800F592
	.2byte 0x0000
