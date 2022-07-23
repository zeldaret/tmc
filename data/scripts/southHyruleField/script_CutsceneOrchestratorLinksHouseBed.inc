@ Links house CUTSCENE_ORCHESTRATOR bed
SCRIPT_START script_CutsceneOrchestratorLinksHouseBed
	BeginBlock
	EndBlock
script_08009DF0:
	CheckPlayerInRegion 0x00a0, 0x0038, 0x1830
	JumpIfNot script_08009DF0
	SetPlayerIdle
	Call WaitForPlayerNormal
	Wait 0x0008
	EzloMessage TEXT_SMITH, 0x07
	CheckTextboxResult
	JumpIfNot script_08009E4E
	Call DisablePauseMenuAndPutAwayItems
	SetFadeTime 0x0002
	SetFade5
	WaitForFadeFinish
	Call sub_0804E864
	Wait 0x001e
	SetSyncFlag 0x00000002
	WaitForSyncFlagAndClear 0x00000001
	EzloMessage TEXT_SMITH, 0x09
	Wait 0x000f
	WaitUntilTextboxCloses
	EnablePlayerControl
	Call EnablePauseMenu
	DoPostScriptAction 0x0006
SCRIPT_END
script_08009E4E:
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
