@ Mountain Ezlo text after beating CoF
SCRIPT_START script_EzloTalkCoF
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage 0x1c02
	WaitUntilTextboxCloses
	SetLocalFlagByBank 0x0100, 0x0002
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
