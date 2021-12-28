@ Hyrule Town Din
SCRIPT_START script_Din
	BeginBlock
	Call sub_08064828
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
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
	MessageNoOverlap 0x4515
	WaitUntilTextboxCloses
	EnablePlayerControl 
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011C9A
script_08011CC2:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002c
	JumpIf script_08011C9A
	CheckGlobalFlag 0x002d
	JumpIf script_08011C9A
	CheckEntityInteractType
	JumpIfNot script_08011CC2
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3105
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
	MessageNoOverlap 0x3108
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002b
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011D00
	.2byte 0x0000
