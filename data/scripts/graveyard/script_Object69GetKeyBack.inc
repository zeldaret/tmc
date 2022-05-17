@ Graveyard OBJECT_69 When getting the key back
SCRIPT_START script_Object69GetKeyBack
	BeginBlock
	EndBlock
script_080098D8:
	CheckGlobalFlag HAKA_KEY_LOST
	JumpIfNot script_080098D8
script_080098E0:
	CheckInventory1 ITEM_QST_GRAVEYARD_KEY
	JumpIfNot script_080098E0
	CheckLocalFlag HAKA_KEY_GET
	JumpIf script_08009910
	SetLocalFlag HAKA_KEY_GET
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	EzloMessage TEXT_DAMPE, 0x0a
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
script_08009910:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
