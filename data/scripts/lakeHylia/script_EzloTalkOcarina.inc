@ Ezlo talk after first ocarina travel
SCRIPT_START script_EzloTalkOcarina
	EndBlock
	SetPlayerIdle
	Call WaitForPlayerNormalOrTalkEzlo
	Call sub_0807DF28
	EzloMessage 0x0b5f
	WaitUntilTextboxCloses
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
