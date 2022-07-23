@ Ezlo talk after getting wind element
SCRIPT_START script_EzloTalkPoW
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x05
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0005
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
