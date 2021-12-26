@ Hyrule Castle Guard kicking Link out of garden
SCRIPT_START script_GuardGarden8
	_0807E864
	Call sub_0807DF28
	MessageFromTargetPos 0x1320, 0x000c
	WaitUntilTextboxCloses
	_0807E878 
	Call sub_0807DF50
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
