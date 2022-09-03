@ After Mazaal NPC4E receive ocarina
SCRIPT_START script_Npc4EReceiveOcarina
	BeginBlock
	DoPostScriptAction 0x0008
	CheckInventory1 ITEM_OCARINA
	JumpIf script_0800D924
	EndBlock
script_0800D8F4:
	CheckInventory1 ITEM_OCARINA
	JumpIfNot script_0800D8F4
	Call DisablePauseMenuAndPutAwayItems
	SetPlayerIdle
	WaitPlayerGetItem
	EzloMessage TEXT_VAATI, 0x25
	WaitUntilTextboxCloses
	PlaySound SFX_113
	SetIntVariable 0
	Call NPC4E_DoScreenTransition
	EnablePlayerControl
	Call EnablePauseMenu
script_0800D924:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
