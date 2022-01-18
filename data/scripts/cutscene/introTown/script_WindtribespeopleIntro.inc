@ Intro Hyrule Town WindTribespeople
SCRIPT_START script_WindtribespeopleIntro
	BeginBlock
	_0807E9D4
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
