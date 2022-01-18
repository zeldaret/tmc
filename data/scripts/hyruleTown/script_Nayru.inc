@ Hyrule Town Nayru
SCRIPT_START script_Nayru
	BeginBlock
	Call sub_08064928
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
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
	MessageNoOverlap 0x4513
	WaitUntilTextboxCloses
	EnablePlayerControl 
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D46
script_08011D6E:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002b
	JumpIf script_08011D46
	CheckGlobalFlag 0x002d
	JumpIf script_08011D46
	CheckEntityInteractType
	JumpIfNot script_08011D6E
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3103
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
	MessageNoOverlap 0x3106
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002c
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011DAC
	.2byte 0x0000
