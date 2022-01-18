@ Ezlo talk after getting wind element
SCRIPT_START script_EzloTalkPoW
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage 0x1c05
	WaitUntilTextboxCloses
	SetLocalFlagByBank 0x0100, 0x0005
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
