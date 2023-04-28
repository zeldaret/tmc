@ Hyrule Town Farore
SCRIPT_START script_Farore
	BeginBlock
	Call Farore_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag GOMAN_RENTED_HOUSE
	JumpIf script_08011E1A
	EndBlock
script_08011DF2:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011DF2
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x14
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011DF2
script_08011E1A:
	EndBlock
	BeginBlock
	CheckGlobalFlag RENTED_HOUSE_DIN
	JumpIf script_08011DF2
	CheckGlobalFlag RENTED_HOUSE_NAYRU
	JumpIf script_08011DF2
	CheckEntityInteractType
	JumpIfNot script_08011E1A
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x04
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_08011E66
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E1A
script_08011E58:
	CheckEntityInteractType
	JumpIfNot script_08011E58
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
script_08011E66:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x07
	WaitUntilTextboxCloses
	SetGlobalFlag RENTED_HOUSE_FARORE
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E58
	.2byte 0x0000
