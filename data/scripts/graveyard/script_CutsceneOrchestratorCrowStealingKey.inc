@ Graveyard CUTSCENE_ORCHESTRATOR Crow stealing key cutscene
SCRIPT_START script_CutsceneOrchestratorCrowStealingKey
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	PlaySound SFX_1F3
	Call CreatePlayerQuestionMark
	_0807E8E4_1
	Wait 0x000a
	_0807E8E4_3
	Wait 0x0032
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000004
	StartPlayerScript script_PlayerGetKeyStolen
	WaitForSyncFlagAndClear 0x00000040
	SetSyncFlag 0x00000008
	WaitForSyncFlagAndClear 0x00000010
	SetSyncFlag 0x00000020
	WaitForSyncFlagAndClear 0x00000040
	SetInventoryValue ITEM_QST_GRAVEYARD_KEY, 0x0000
	SetGlobalFlag HAKA_KEY_LOST
	_0807E8E4_3
	Wait 0x001e
	EzloMessage TEXT_DAMPE, 0x09
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
