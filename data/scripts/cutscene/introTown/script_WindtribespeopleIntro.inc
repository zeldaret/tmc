@ Intro Hyrule Town WindTribespeople
script_WindtribespeopleIntro::
	BeginBlock
	AddInteractableWhenBigObject
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0001
	EndBlock
script_0800F636:
	FacePlayerAndCheckDist
	JumpIfNot script_0800F636
	SetPlayerIdle
	FacePlayer
	Call sub_0806C90C
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800F636
	.2byte 0x0000
