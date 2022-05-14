@ Mountain Ezlo text after beating CoF
SCRIPT_START script_EzloTalkCoF
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x02
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0002
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
