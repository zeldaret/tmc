@ DHC CUTSCENE_ORCHESTRATOR After defeating V2
SCRIPT_START script_CutsceneOrchestratorV2Defeated
	BeginBlock
	Call DisablePauseMenuAndPutAwayItems
	SetPlayerIdle
	EndBlock
	StopBgm
	StopBgm
	Wait 0x0078
	EzloMessage TEXT_VAATI2, 0x38
	WaitUntilTextboxCloses
	SetRoomFlag 0x0000
	Wait 0x001e
	SetSyncFlag 0x00000001
	StartPlayerScript script_PlayerV2Defeated
	WaitForSyncFlagAndClear 0x00000002
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
