@ Library Sturgeon
SCRIPT_START script_Sturgeon
	BeginBlock
	Call Sturgeon_MakeInteractable
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
	SetAnimationState 0x0002
	SetAnimation 0x0000
	EndBlock
script_0800ED76:
	TriggerInteract
	SetPlayerIdle
	FacePlayer
	Call sub_08064CD8
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_0800ED76
	.2byte 0x0000
