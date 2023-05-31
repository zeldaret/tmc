@ Nayru completely alone
SCRIPT_START script_NayruAlone
	BeginBlock
	Call Nayru_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08012216:
	CheckEntityInteractType
	JumpIfNot script_08012216
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x25
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08012216
