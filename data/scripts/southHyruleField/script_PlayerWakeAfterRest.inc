@ Player waking up after rest
SCRIPT_START script_PlayerWakeAfterRest
	BeginBlock
	Call DisablePauseMenuAndPutAwayItems
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	SetFadeTime 0x0002
	SetFade4
	WaitForFadeFinish
	DoPostScriptAction 0x0014
	Wait 0x001e
	SetSyncFlag 0x00000001
SCRIPT_END
