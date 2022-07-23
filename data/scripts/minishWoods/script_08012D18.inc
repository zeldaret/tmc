@ Minish Woods CUTSCENE_ORCHESTRATOR 2?
SCRIPT_START script_08012D18
	EndBlock
	BeginBlock
	CheckGlobalFlag EZERO_1ST
	JumpIfNot script_08012D18
	CheckLocalFlagByBank FLAG_BANK_2, 0x008d
	JumpIf script_08012D68
	CheckPlayerInRegion 0x0000, 0x01a8, 0x2010
	JumpIfNot script_08012D18
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_FINDING_EZLO, 0x1a
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerCannotEnter
	WaitForSyncFlagAndClear 0x00000001
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_08012D18
script_08012D68:
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
