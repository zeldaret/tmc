@ Minish Woods Ezlo talks after finishing earth temple
script_EzloTalkDWS::
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x01
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0001
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
	EndScript
	.2byte 0x0000
