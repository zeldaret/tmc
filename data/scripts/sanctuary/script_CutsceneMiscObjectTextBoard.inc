@ Sanctuary CUTSCENE_MISC_OBJECT text board
SCRIPT_START script_CutsceneMiscObjectTextBoard
	BeginBlock
	CheckLocalFlag 0x007a
	JumpIf script_08013C2A
	CheckInventory1 ITEM_RED_SWORD
	JumpIf script_08013C2A
	CheckInventory1 ITEM_GREEN_SWORD
	JumpIfNot script_08013C98
	CheckInventory1 ITEM_EARTH_ELEMENT
	JumpIfNot script_08013C98
	CheckInventory1 ITEM_FIRE_ELEMENT
	JumpIfNot script_08013C98
	EndBlock
	DoPostScriptAction 0x0008
	WaitForSyncFlagAndClear 0x00000004
	SetAction 0x0002
	PlaySound SFX_134
	Jump script_08013C32
script_08013C2A:
	CheckLocalFlag 0x007c
	JumpIf script_08013C98
script_08013C32:
	BeginBlock
	DoPostScriptAction 0x0007
	Call MakeCheckableObjectInteractable
	DoPostScriptAction 0x000a
	CallWithArg sub_080962F8, 0x00000000
.ifndef EU
	CallWithArg sub_0807F8E8, 0x00000004
.endif
	EndBlock
script_08013C58:
	EndBlock
	BeginBlock
	CheckSyncFlagAndClear 0x00000008
	JumpIf script_08013C92
	CheckEntityInteractType
	JumpIfNot script_08013C58
	EndBlock
	SetPlayerIdle
	FacePlayer
	CheckLocalFlag 0x007d
	JumpIf script_08013C82
	EzloMessage TEXT_PANEL_TUTORIAL, 0x01
	Jump script_08013C86
script_08013C82:
	EzloMessage TEXT_PANEL_TUTORIAL, 0x06
script_08013C86:
	WaitUntilTextboxCloses
	Wait 0x000f
	EnablePlayerControl
	Jump script_08013C58
script_08013C92:
	EndBlock
	SetAction 0x0004
script_08013C98:
	DoPostScriptAction 0x0008
	DoPostScriptAction 0x0006
SCRIPT_END
	.align 2, 0
