@ Ezlo talk after first ocarina travel
SCRIPT_START script_EzloTalkOcarina
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormalOrTalkEzlo
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_EZLO, 0x5f
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
