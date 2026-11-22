@ Player sleeping at Inn
script_PlayerSleepingInn::
	BeginBlock
	Call DisablePauseMenuAndPutAwayItems
	SetPlayerIdle
	ModHealth 0x00a0
	EndBlock
	Wait 0x003c
	SetFadeTime 0x0004
	SetFade4
	WaitForFadeFinish
script_08010A78:
	Call CheckAnyKeyPressed
	JumpIfNot script_08010A78
	DoPostScriptAction 0x0014
	EnablePlayerControl
	Call EnablePauseMenu
	Call ResetPlayerAnimationAndAction
	EndScript
	.2byte 0x0000
