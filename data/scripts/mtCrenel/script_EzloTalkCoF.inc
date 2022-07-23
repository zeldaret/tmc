@ Mountain Ezlo text after beating CoF
SCRIPT_START script_EzloTalkCoF
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x02
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0002
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
