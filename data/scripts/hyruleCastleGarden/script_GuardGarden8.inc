@ Hyrule Castle Guard kicking Link out of garden
SCRIPT_START script_GuardGarden8
	SetPlayerIdle
	Call sub_0807DF28
	MessageFromTargetPos TEXT_VAATI, 0x20, 0x000c
	WaitUntilTextboxCloses
	EnablePlayerControl 
	Call sub_0807DF50
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
