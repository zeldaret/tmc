@ Hyrule Town Mama
SCRIPT_START script_Mama
	BeginBlock
	Call Mama_MakeInteractable
	DoPostScriptAction 0x000a
	SetAnimationState 0x0000
	EndBlock
script_0800E932:
	CheckEntityInteractType
	JumpIfNot script_0800E932
	SetPlayerIdle
	SetAnimationState 0x0004
	SetAnimation 0x0004
script_0800E942:
	Call sub_0806C4A8
	JumpIfNot script_0800E942
	Call sub_0806C4DC
	WaitUntilTextboxCloses
	EnablePlayerControl
	SetAnimationState 0x0000
	SetAnimation 0x0000
	Jump script_0800E932
	.2byte 0x0000
