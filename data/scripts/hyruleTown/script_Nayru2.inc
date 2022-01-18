@ Hyrule Town Nayru when one of them has moved in
SCRIPT_START script_Nayru2
	BeginBlock
	Call sub_08064928
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011F22:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002e
	JumpIf script_08011D46
	CheckGlobalFlag 0x0030
	JumpIf script_08011D46
	CheckEntityInteractType
	JumpIfNot script_08011F22
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	CheckGlobalFlag 0x0048
	JumpIf script_08011F58
	MessageNoOverlap 0x4522
	WaitUntilTextboxCloses
	Jump script_08011F64
script_08011F58:
	MessageNoOverlap 0x310f
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
	MessageNoOverlap 0x3112
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002f
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011F72
