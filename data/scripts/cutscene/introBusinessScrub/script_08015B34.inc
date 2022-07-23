@ Intro Outside Castle CUTSCENE_ORCHESTRATOR 2?
SCRIPT_START script_08015B34
	EndBlock
	BeginBlock
	CheckLocalFlag SOUGEN_06_AKINDO
	JumpIf script_08015B7E
	@ Prevent player from leaving to Hyrule Town
	CallWithArg sub_0807F6B4, 0x00000318
	JumpIfNot script_08015B34
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormal
	Call DisablePauseMenuAndPutAwayItems
	MessageFromTargetPos TEXT_FESTIVAL, 0x06, 0x0002
	WaitUntilTextboxCloses
	StartPlayerScript script_PlayerAtIntroBusinessScrub4
	WaitForSyncFlagAndClear 0x00000004
	Call EnablePauseMenu
	EnablePlayerControl
	Jump script_08015B34
script_08015B7E:
	DoPostScriptAction 0x0006
SCRIPT_END
