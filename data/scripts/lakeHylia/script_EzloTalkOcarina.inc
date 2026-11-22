@ Ezlo talk after first ocarina travel
script_EzloTalkOcarina::
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormalOrTalkEzlo
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_EZLO, 0x5f
	WaitUntilTextboxCloses
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
	EndScript
