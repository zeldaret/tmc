@ Hyrule Castle Guard kicking Link out of garden
SCRIPT_START script_GuardGarden8
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	MessageFromTargetPos TEXT_VAATI, 0x20, 0x000c
	WaitUntilTextboxCloses
	EnablePlayerControl
	Call EnablePauseMenu
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000
