@ After ToD CUTSCENE_ORCHESTRATOR Cutscene
SCRIPT_START script_CutsceneOrchestratorAfterToD
	SetPlayerIdle
script_0800AFB2:
	EndBlock
	BeginBlock
	Call sub_0807FBB4
	ComparePlayerAction PLAYER_NORMAL
	JumpIfNot script_0800AFB2
	EndBlock
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x04
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0004
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
