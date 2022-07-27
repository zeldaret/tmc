@ Graveyard house door
SCRIPT_START script_GraveyardHouseDoor
	BeginBlock
	DoPostScriptAction 0x0007
	Jump script_080096FC
	CheckGlobalFlag HAKA_KEY_LOST
	JumpIf script_080096FC
	EndBlock
script_080096AC:
	CheckPlayerInRegion 0x0188, 0x01c0, 0x1020
	JumpIfNot script_080096AC
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerAtGraveyardHouseDoor
	WaitForSyncFlagAndClear 0x00000001
	PlaySound SFX_111
	DoPostScriptAction 0x0008
	LoadRoomEntityList gUnk_080D9048
	Wait 0x000f
	PlaySound SFX_111
	DoPostScriptAction 0x0007
script_080096EC:
	CheckGlobalFlag HAKA_KEY_LOST
	JumpIfNot script_080096EC
	Call EnablePauseMenu
	EnablePlayerControl
script_080096FC:
	Call sub_0808692C
SCRIPT_END
