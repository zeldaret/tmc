@ Ezlo talk after Wind Ruins
SCRIPT_START script_EzloTalkFoW
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x03
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0003
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
