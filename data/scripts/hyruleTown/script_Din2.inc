@ Hyrule Town Din when one of them has moved in
SCRIPT_START script_Din2
	BeginBlock
	Call sub_08064828
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	EndBlock
script_08011E96:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002f
	JumpIf script_08011C9A
	CheckGlobalFlag 0x0030
	JumpIf script_08011C9A
	CheckEntityInteractType
	JumpIfNot script_08011E96
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	CheckGlobalFlag 0x0048
	JumpIf script_08011ECC
	MessageNoOverlap 0x4524
	WaitUntilTextboxCloses
	Jump script_08011ED8
script_08011ECC:
	MessageNoOverlap 0x3111
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
	MessageNoOverlap 0x3114
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002e
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011EE6
