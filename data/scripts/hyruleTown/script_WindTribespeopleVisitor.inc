@ Hyrule Town Windstribepeople in house
SCRIPT_START script_WindTribespeopleVisitor
	BeginBlock
	Call WindTribespeople_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	SetAnimation 0x0000
	EndBlock
script_0800EB0E:
	FacePlayerAndCheckDist
	JumpIfNot script_0800EB0E
	SetPlayerIdle
	FacePlayer
	Call sub_0806C90C
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800EB0E
	.2byte 0x0000
