@ Intro smith CUTSCENE_ORCHESTRATOR ?
SCRIPT_START script_CutsceneOrchestratorIntro
	BeginBlock
	Call DisablePauseMenuAndPutAwayItems
	SetPlayerIdle
	SetSyncFlag 0x00000000
	EndBlock
	WaitForFadeFinish
	Wait 0x0078
	SetSyncFlag 0x00000004
	WaitForSyncFlagAndClear 0x00000001
	SetGlobalFlag ZELDA_CHASE
	Call EnablePauseMenu
	EnablePlayerControl
	Call PlayerSetNormalAndCollide
SCRIPT_END
