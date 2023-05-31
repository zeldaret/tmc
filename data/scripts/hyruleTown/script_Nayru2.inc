@ Hyrule Town Nayru when one of them has moved in
SCRIPT_START script_Nayru2
	BeginBlock
	Call Nayru_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011F22:
	EndBlock
	BeginBlock
	CheckGlobalFlag NEW_HOUSE_DIN
	JumpIf script_08011D46
	CheckGlobalFlag NEW_HOUSE_FARORE
	JumpIf script_08011D46
	CheckEntityInteractType
	JumpIfNot script_08011F22
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	CheckGlobalFlag GOMAN_NEW_HOUSE
	JumpIf script_08011F58
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x22
	WaitUntilTextboxCloses
	Jump script_08011F64
script_08011F58:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x0f
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_08011F80
script_08011F64:
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011F22
script_08011F72:
	CheckEntityInteractType
	JumpIfNot script_08011F72
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
script_08011F80:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x12
	WaitUntilTextboxCloses
	SetGlobalFlag NEW_HOUSE_NAYRU
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011F72
