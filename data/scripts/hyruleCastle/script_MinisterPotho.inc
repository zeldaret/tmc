@ Hyrule Castle Minister Potho
SCRIPT_START script_MinisterPotho
	BeginBlock
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
script_0800927E:
	Call MinisterPotho_MakeInteractable
	DoPostScriptAction 0x000a
	EndBlock
script_0800928A:
	CheckEntityInteractType
	JumpIfNot script_0800928A
	SetPlayerIdle
	FacePlayer
	Call sub_08066904
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800928A
	.2byte 0x0000
