@ Hyrule Town Din
SCRIPT_START script_Din
	BeginBlock
	Call Din_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag GOMAN_RENTED_HOUSE
	JumpIf script_08011CC2
	EndBlock
script_08011C9A:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011C9A
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x15
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011C9A
script_08011CC2:
	EndBlock
	BeginBlock
	CheckGlobalFlag RENTED_HOUSE_NAYRU
	JumpIf script_08011C9A
	CheckGlobalFlag RENTED_HOUSE_FARORE
	JumpIf script_08011C9A
	CheckEntityInteractType
	JumpIfNot script_08011CC2
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x5
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_08011D0E
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011CC2
script_08011D00:
	CheckEntityInteractType
	JumpIfNot script_08011D00
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
script_08011D0E:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x8
	WaitUntilTextboxCloses
	SetGlobalFlag RENTED_HOUSE_DIN
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D00
	.2byte 0x0000
