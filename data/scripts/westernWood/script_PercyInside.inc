@ Tilby Highlands Percy in Tree or in his house
SCRIPT_START script_PercyInside
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x000a
	Call Percy_MakeInteractable
	EndBlock
script_08012E9E:
	CheckEntityInteractType
	JumpIfNot script_08012E9E
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0001
	Call sub_0806B4F0
	WaitUntilTextboxCloses
	EnablePlayerControl
	DoPostScriptAction 0x0000
	Jump script_08012E9E
	.2byte 0x0000
