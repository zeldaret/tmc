@ Intro Player
SCRIPT_START script_PlayerIntro
	BeginBlock
	Call DisablePauseMenuAndPutAwayItems
	SetPlayerIdle
	SetLocalFlag 0x0046
	EndBlock
	WaitForFadeFinish
	Wait 0x001e
	@ Wake up message
	MessageFromTarget TEXT_PROLOGUE, 0x05
	WaitUntilTextboxCloses
	Wait 0x003c
	Call sub_0807529C
	Wait 0x003c
	@ Exclamation mark
	DoPostScriptAction 0x0014
	Wait 0x001e
	@ Give control to the player?
	Call sub_08053250
	EnablePlayerControl
	Call EnablePauseMenu
	Call ResetPlayerAnimationAndAction
SCRIPT_END
