@ Sanctuary NPC4E Inspect picture in back room after Vaati has revealed himself
SCRIPT_START script_Npc4ELookAtPictureAgain
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
script_0801427C:
	CheckLocalFlag 0x0078
	JumpIfNot script_0801427C
	BeginBlock
	Call MakeCheckableObjectInteractable
	CallWithArg NPC4E_ChangeInteractableHitbox, 0x00000008
	EndBlock
script_08014298:
	CheckEntityInteractType
	JumpIfNot script_08014298
	SetPlayerIdle
	MessageFromTargetPos 0x0647, 0x000c
	WaitUntilTextboxCloses
	EnablePlayerControl
	Jump script_08014298
	.2byte 0x0000
