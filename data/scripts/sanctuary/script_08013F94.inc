@ Sanctuary NPC4E 1?
SCRIPT_START script_08013F94
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
	CheckLocalFlag 0x007d
	JumpIf script_08013FE0
script_08013FA4:
	EndBlock
	BeginBlock
	CheckInventory1 ITEM_RED_SWORD
	JumpIfNot script_08013FA4
	CheckPlayerFlags PL_CLONING
	JumpIfNot script_08013FA4
	EndBlock
	Call WaitForPlayerNormalOrTalkEzlo
	DisablePlayerControl
	Call DisablePauseMenu
	Wait 0x0078
	EzloMessage TEXT_PANEL_TUTORIAL, 0x05
	WaitUntilTextboxCloses
	SetLocalFlag 0x007d
	Call EnablePauseMenu
	EnablePlayerControl
script_08013FE0:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
