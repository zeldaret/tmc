@ Hyrule Town Din when one of them has moved in
SCRIPT_START script_Din2
	BeginBlock
	Call Din_MakeInteractable
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011E96:
	EndBlock
	BeginBlock
	CheckGlobalFlag NEW_HOUSE_NAYRU
	JumpIf script_08011C9A
	CheckGlobalFlag NEW_HOUSE_FARORE
	JumpIf script_08011C9A
	CheckEntityInteractType
	JumpIfNot script_08011E96
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	CheckGlobalFlag GOMAN_NEW_HOUSE
	JumpIf script_08011ECC
	MessageNoOverlap TEXT_HAPPY_HEARTH, 0x24
	WaitUntilTextboxCloses
	Jump script_08011ED8
script_08011ECC:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x11
	WaitUntilTextboxCloses
	CheckTextboxResult
	JumpIf script_08011EF4
script_08011ED8:
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E96
script_08011EE6:
	CheckEntityInteractType
	JumpIfNot script_08011EE6
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
script_08011EF4:
	MessageNoOverlap TEXT_GORMAN_ORACLES, 0x14
	WaitUntilTextboxCloses
	SetGlobalFlag NEW_HOUSE_DIN
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011EE6
