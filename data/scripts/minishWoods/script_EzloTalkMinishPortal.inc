@ Minish Woods Ezlo Talks after exiting portal for the first time
SCRIPT_START script_EzloTalkMinishPortal
	EndBlock
	BeginBlock
	CheckPlayerMinish
	JumpIfNot script_EzloTalkMinishPortal
	CheckPlayerInRegion 0x0380, 0x03b0, 0x4040
	JumpIfNot script_EzloTalkMinishPortal
	ComparePlayerAction PLAYER_USEPORTAL
	JumpIf script_EzloTalkMinishPortal
	SetPlayerIdle
	Call DisablePauseMenuAndPutAwayItems
	EndBlock
	EzloMessage TEXT_EZLO_PORTAL, 0x03
	WaitUntilTextboxCloses
	SetLocalFlag MORI_ENTRANCE_1ST
	Call EnablePauseMenu
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
