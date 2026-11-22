@ Ezlo talk after Wind Ruins
script_EzloTalkFoW::
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x03
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0003
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
