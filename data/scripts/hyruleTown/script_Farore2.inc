@ Hyrule Town Farore when one of them has moved in
SCRIPT_START script_Farore2
	BeginBlock
	Call Farore_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011FAE:
	EndBlock
	BeginBlock
	CheckGlobalFlag NEW_HOUSE_DIN
	JumpIf script_08011DF2
	CheckGlobalFlag NEW_HOUSE_NAYRU
	JumpIf script_08011DF2
	CheckEntityInteractType
	JumpIfNot script_08011FAE
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	CheckGlobalFlag GOMAN_NEW_HOUSE
	JumpIf script_08011FE4
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x23
	WaitUntilTextboxCloses
	Jump script_08011FF0
script_08011FE4:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x10
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_0801200C
script_08011FF0:
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011FAE
script_08011FFE:
	CheckEntityInteractType
	JumpIfNot script_08011FFE
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
script_0801200C:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x13
	WaitUntilTextboxCloses
	SetGlobalFlag NEW_HOUSE_FARORE
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011FFE


