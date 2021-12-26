@ Player waking up after rest
SCRIPT_START script_PlayerWakeAfterRest
	BeginBlock
	Call sub_0807DF28
	EndBlock
	WaitForSyncFlagAndClear 0x00000002
	_0807E778 0x0002
	DoFade4
	WaitForFadeFinish
	DoPostScriptAction 0x0014
	Wait 0x001e
	SetSyncFlag 0x00000001
SCRIPT_END
