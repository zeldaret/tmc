@ Minish Woods Ezlo talks after finishing earth temple
SCRIPT_START script_EzloTalkDWS
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x01
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0001
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
