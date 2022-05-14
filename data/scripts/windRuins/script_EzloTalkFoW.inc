@ Ezlo talk after Wind Ruins
SCRIPT_START script_EzloTalkFoW
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage TEXT_EZLO_ELEMENTS_DONE, 0x03
	WaitUntilTextboxCloses
	SetLocalFlagByBank FLAG_BANK_1, 0x0003
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
