@ Hyrule Town Nayru
SCRIPT_START script_Nayru
	BeginBlock
	Call Nayru_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag GOMAN_RENTED_HOUSE
	JumpIf script_08011D6E
	EndBlock
script_08011D46:
	EndBlock
	BeginBlock
	CheckEntityInteractType
	JumpIfNot script_08011D46
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x13
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D46
script_08011D6E:
	EndBlock
	BeginBlock
	CheckGlobalFlag RENTED_HOUSE_DIN
	JumpIf script_08011D46
	CheckGlobalFlag RENTED_HOUSE_FARORE
	JumpIf script_08011D46
	CheckEntityInteractType
	JumpIfNot script_08011D6E
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x03
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_08011DBA
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D6E
script_08011DAC:
	CheckEntityInteractType
	JumpIfNot script_08011DAC
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
script_08011DBA:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x06
	WaitUntilTextboxCloses
	SetGlobalFlag RENTED_HOUSE_NAYRU
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011DAC
	.2byte 0x0000
