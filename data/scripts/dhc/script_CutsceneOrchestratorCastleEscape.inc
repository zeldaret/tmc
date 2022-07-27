@ DHC CUTSCENE_ORCHESTRATOR trying to escape the collapsing castle
SCRIPT_START script_CutsceneOrchestratorCastleEscape
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	StartPlayerScript script_PlayerCastleEscape
	WaitForSyncFlagAndClear 0x00000001
	WaitForSyncFlagAndClear 0x00000002
	EzloMessage TEXT_VAATI2, 0x47
	WaitUntilTextboxCloses
	SetLocalFlag 0x007a
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
