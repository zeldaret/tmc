@ Hyrule Town Stamp
SCRIPT_START script_Stamp
	BeginBlock
	DoPostScriptAction 0x0007
	_0807E9D4
	DoPostScriptAction 0x000a
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	EndBlock
script_080107AA:
	CheckEntityInteractType
	JumpIfNot script_080107AA
	SetPlayerIdle
	Call WaitForAnimDone
	DoPostScriptAction 0x0001
	Call sub_08062CBC
	WaitUntilTextboxCloses
	EnablePlayerControl
	DoPostScriptAction 0x0000
	Jump script_080107AA
	.2byte 0x0000
