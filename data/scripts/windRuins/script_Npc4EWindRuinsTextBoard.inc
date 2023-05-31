@ After Mazaal NPC4E text board
SCRIPT_START script_Npc4EWindRuinsTextBoard
	BeginBlock
	Call MakeCheckableObjectInteractable
	DoPostScriptAction 0x0008
	SetIntVariable 0x00000001
	Call NPC4E_ChangeInteractableHitbox
	EndBlock
script_0800D88E:
	CheckEntityInteractType
	JumpIfNot script_0800D88E
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	CheckLocalFlag 0x0045
	JumpIf script_0800D8B0
	StartPlayerScript script_PlayerAtTextboard
	WaitForSyncFlagAndClear 0x00000001
script_0800D8B0:
	_0807E8E4_0
	MessageNoOverlap TEXT_VAATI, 0x24
	WaitUntilTextboxCloses
	CheckInventory1 ITEM_OCARINA
	JumpIf script_0800D8D6
	CheckLocalFlag 0x0045
	JumpIf script_0800D8D6
	LoadRoomEntityList gUnk_080E3830
script_0800D8CE:
	CheckLocalFlag 0x0045
	JumpIfNot script_0800D8CE
script_0800D8D6:
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_0800D88E
	.2byte 0x0000
