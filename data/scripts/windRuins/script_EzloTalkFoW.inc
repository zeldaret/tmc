@ Ezlo talk after Wind Ruins
SCRIPT_START script_EzloTalkFoW
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage 0x1c03
	WaitUntilTextboxCloses
	SetLocalFlagByBank 0x0100, 0x0003
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
