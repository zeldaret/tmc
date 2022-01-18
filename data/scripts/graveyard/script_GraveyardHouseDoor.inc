@ Graveyard house door
SCRIPT_START script_GraveyardHouseDoor
	BeginBlock
	DoPostScriptAction 0x0007
	Jump script_080096FC
	CheckGlobalFlag 0x0020
	JumpIf script_080096FC
	EndBlock
script_080096AC:
	CheckPlayerInRegion 0x0188, 0x01c0, 0x1020
	JumpIfNot script_080096AC
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call sub_0807DF28
	StartPlayerScript script_PlayerAtGraveyardHouseDoor
	WaitForSyncFlagAndClear 0x00000001
	PlaySound SFX_111
	DoPostScriptAction 0x0008
	LoadRoomEntityList gUnk_080D9048
	Wait 0x000f
	PlaySound SFX_111
	DoPostScriptAction 0x0007
script_080096EC:
	CheckGlobalFlag 0x0020
	JumpIfNot script_080096EC
	Call sub_0807DF50
	EnablePlayerControl
script_080096FC:
	Call sub_0808692C
SCRIPT_END
