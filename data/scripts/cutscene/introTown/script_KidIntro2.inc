@ Hyrule Town Intro Kid blocking the way
SCRIPT_START script_KidIntro2
	BeginBlock
	DoPostScriptAction 0x0001
	_0807E9D4
	DoPostScriptAction 0x000a
	Call sub_08062788
	EndBlock
script_0800F6F4:
	CheckLocalFlag MACHI_01_DEMO
	JumpIf script_0800F718
	CheckEntityInteractType
	JumpIfNot script_0800F6F4
	SetPlayerIdle
	FacePlayer
	Call sub_0806265C
	WaitUntilTextboxCloses
	EnablePlayerControl
	DoPostScriptAction 0x0001
	Jump script_0800F6F4
script_0800F718:
	Call sub_080627E8
	DoPostScriptAction 0x0006
SCRIPT_END
