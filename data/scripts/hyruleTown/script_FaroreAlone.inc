@ Farore completely alone
SCRIPT_START script_FaroreAlone
	BeginBlock
	Call Farore_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_0801224E:
	CheckEntityInteractType
	JumpIfNot script_0801224E
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x26
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_0801224E
