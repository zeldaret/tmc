@ Sanctuary NPC4E Link has to try his new ability before leaving
SCRIPT_START script_NPC4EPreventPlayerLeave
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
script_08013FF0:
	EndBlock
	BeginBlock
	CheckLocalFlag 0x007d
	JumpIf script_0801404C
	CheckLocalFlag 0x007a
	JumpIfNot script_08013FF0
	CheckInventory1 ITEM_RED_SWORD
	JumpIfNot script_08013FF0
	CallWithArg sub_0807F6B4, 0x000000d0
	JumpIfNot script_08013FF0
	EndBlock
	Call WaitForPlayerNormal
	BeginBlock
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EndBlock
	EzloMessage TEXT_PANEL_TUTORIAL, 0x08
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerSanctuary
	WaitForSyncFlagAndClear 0x00000001
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_08013FF0
script_0801404C:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
