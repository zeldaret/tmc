@ Hyrule Town Farore
SCRIPT_START script_Farore
	BeginBlock
	Call sub_08064A28
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	DoPostScriptAction 0x000a
	CheckGlobalFlag 0x0047
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
	MessageNoOverlap 0x4514
	WaitUntilTextboxCloses
	EnablePlayerControl 
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011DF2
script_08011E1A:
	EndBlock
	BeginBlock
	CheckGlobalFlag 0x002b
	JumpIf script_08011DF2
	CheckGlobalFlag 0x002c
	JumpIf script_08011DF2
	CheckEntityInteractType
	JumpIfNot script_08011E1A
	EndBlock
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0000
	MessageNoOverlap 0x3104
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
	MessageNoOverlap 0x3107
	WaitUntilTextboxCloses
	SetGlobalFlag 0x002d
	EnablePlayerControl
	SetAnimationState 0x0004
	DoPostScriptAction 0x0001
	Jump script_08011E58
	.2byte 0x0000
