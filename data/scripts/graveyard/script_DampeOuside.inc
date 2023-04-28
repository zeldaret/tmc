@ Graveyard Dampe outside
SCRIPT_START script_DampeOuside
	BeginBlock
	DoPostScriptAction 0x000b
	DoPostScriptAction 0x0008
	EndBlock
script_08009638:
	EndBlock
	BeginBlock
	CheckGlobalFlag HAKA_KEY_LOST
	JumpIfNot script_08009638
	EndBlock
script_08009646:
	Call sub_0806BF44
	JumpIf script_08009646
	EndBlock
	Call Dampe_MakeInteractable
	DoPostScriptAction 0x000a
	DoPostScriptAction 0x0007
script_08009660:
	CheckEntityInteractType
	JumpIfNot script_08009660
	SetPlayerIdle
	FacePlayer
	DoPostScriptAction 0x0001
	Call sub_0806BEC8
	WaitUntilTextboxCloses
	JumpIfNot script_0800968E
	PlaySound SFX_111
	PlaySound SFX_SECRET
	SetInventoryValue ITEM_QST_GRAVEYARD_KEY, 0x0002
	Call sub_0806BEFC
script_0800968E:
	EnablePlayerControl
	DoPostScriptAction 0x0000
	Jump script_08009660
