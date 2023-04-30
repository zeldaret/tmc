@ TODO UNUSED?
SCRIPT_START script_08013D04
	BeginBlock
	Call MakePedestalInteractable
	DoPostScriptAction 0x0008
	CallWithArg NPC4E_ChangeInteractableHitbox, 0x00000004
	EndBlock
script_08013D1C:
	CheckEntityInteractType
	JumpIfNot script_08013D1C
	CallWithArg sub_08095D54, 0x00000000
	PlaySound SFX_ELEMENT_PLACE
	SetSyncFlag 0x08000000
	Call SetPlayerActionNormal
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
