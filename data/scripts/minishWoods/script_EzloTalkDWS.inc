@ Minish Woods Ezlo talks after finishing earth temple
SCRIPT_START script_EzloTalkDWS
	SetPlayerIdle
	Call sub_0807DF28
	EzloMessage 0x1c01
	WaitUntilTextboxCloses
	SetLocalFlagByBank 0x0100, 0x0001
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
