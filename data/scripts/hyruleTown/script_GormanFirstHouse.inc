@ Hyrule Town Gorman at first house
@ and at second house when ready to sell
script_GormanFirstHouse::
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	AddInteractableWhenBigObject
	EndBlock
script_0800FDB2:
	CheckEntityInteractType
	JumpIfNot script_0800FDB2
	SetPlayerIdle
	FacePlayer
	Call sub_08069888
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_0800FDB2
	.2byte 0x0000
